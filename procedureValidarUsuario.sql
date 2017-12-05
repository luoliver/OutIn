create procedure validarUsuario
(@usuario varchar(30),@contrasena varchar(50))
as 
begin
select * from Empleado 
where em_identificacion = @usuario and em_contrasena = @contrasena
end
