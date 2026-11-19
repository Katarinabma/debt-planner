-- รันใน Supabase > SQL Editor ครั้งเดียว
create table if not exists public.plans (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.plans enable row level security;
create policy "own select" on public.plans for select using (auth.uid() = user_id);
create policy "own insert" on public.plans for insert with check (auth.uid() = user_id);
create policy "own update" on public.plans for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "own delete" on public.plans for delete using (auth.uid() = user_id);
alter publication supabase_realtime add table public.plans;
