create table usuarios
(usuario  varchar2(30) not null,
 nombre   varchar2(40) not null,
 posicion varchar2(40),
 tipo_usuario char(2) default 'N' ,
 fecha_registro  date default sysdate,
 usuario_registro varchar2(30) default USER)
 
 alter table usuarios
 add constraint pk_usuarios primary key (usuario);