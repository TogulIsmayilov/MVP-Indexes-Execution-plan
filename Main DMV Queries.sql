-- Hal-hazırda işləyən query-lər
SELECT 
    session_id,
    status,
    blocking_session_id,
    wait_type,
    wait_time,
    cpu_time,
    total_elapsed_time,
    command,
    text AS query_text
FROM sys.dm_exec_requests
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
WHERE session_id > 50;-- sistem sessiyaları xaric


-- Aktiv sessiyalar haqqında məlumat
SELECT 
    session_id,
    login_name,
    status,
    host_name,
    program_name,
    cpu_time,
    memory_usage,
    total_scheduled_time
FROM sys.dm_exec_sessions
WHERE is_user_process = 1;




-- Hal-hazırda bloklanan sessiyalar
SELECT 
    blocking_session_id,
    session_id,
    wait_type,
    wait_time,
    wait_resource,
    text AS query_text
FROM sys.dm_exec_requests
CROSS APPLY sys.dm_exec_sql_text(sql_handle)
WHERE blocking_session_id <> 0;

--Kim hansı query-ni işlədir
SELECT 
    r.session_id,
    s.login_name,
    s.host_name,
    r.status,
    r.command,
    DB_NAME(r.database_id) AS database_name,
    r.cpu_time,
    r.total_elapsed_time,
    r.reads, r.writes, r.logical_reads,
    r.wait_type, r.blocking_session_id,
    t.text AS query_text
FROM sys.dm_exec_requests r
JOIN sys.dm_exec_sessions s ON r.session_id = s.session_id
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
WHERE r.session_id <> @@SPID;
