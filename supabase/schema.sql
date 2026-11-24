-- Tabel untuk aplikasi Daftar Tugas Job GSC.
-- jobs: satu baris per job pembersihan (gedung/klien + tanggal).
-- tasks: tugas-tugas di dalam satu job.

create table if not exists public.jobs (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  job_date date,
  created_at timestamptz not null default now()
);

create table if not exists public.tasks (
  id uuid primary key default gen_random_uuid(),
  job_id uuid not null references public.jobs(id) on delete cascade,
  text text not null,
  done boolean not null default false,
  position int not null default 0,
  created_at timestamptz not null default now()
);

create index if not exists tasks_job_id_idx on public.tasks(job_id);

-- Keamanan: Row Level Security aktif. Untuk latihan, aksesnya dibuka untuk
-- pengguna anonim. Sebelum dipakai tim sungguhan, ganti dengan login.
alter table public.jobs enable row level security;
alter table public.tasks enable row level security;

create policy "latihan: anon boleh semua (jobs)" on public.jobs for all to anon using (true) with check (true);
create policy "latihan: anon boleh semua (tasks)" on public.tasks for all to anon using (true) with check (true);
