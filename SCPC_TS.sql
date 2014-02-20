drop table if exists user;
drop table if exists news;
drop table if exists problem;
drop table if exists contest;
drop table if exists road;
drop table if exists submission;


create table user (
    id integer primary key auto_increment,
    username text not null,
    password text not null,
    email text not null,
    scpc_oj_account text,
    last_login_time date
);

create table news (
    id integer primary key auto_increment,
    publish_time date not null,
    title text not null,
    content text
)

create table problem (
    id integer primary key auto_increment,
    owner_contest_id integer,
    owner_road_id integer,
    original_oj text not null,
    title text not null,
    memory_limit text,
    time_limit text,
    description text,
    input text,
    output text,
    sample_input text,
    sample_output text,
    hint text
)

create table contest (
    id integer primary key auto_increment,
    title text not null,
    description text,
    start_time date not null,
    end_time date not null,
    problems text,
    private boolean default false,
    contestants text,
    ranklist text
)

create table submission (
    id integer primary key auto_increment,
    user_id integer not null,
    problem_id integer not null,
    submit_time date not null,
    compiler text not null,
    result text not null,
    memory_used text,
    time_used text,
    code text not null,
    original_oj text not null,
    judger_status text
)







