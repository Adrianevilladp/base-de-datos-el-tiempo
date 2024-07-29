CREATE TABLE "public.Publicaciones" (
	"idPublicacion" serial NOT NULL,
	"titular" varchar NOT NULL,
	"cuerpo" varchar NOT NULL,
	"subtitulo" varchar NOT NULL,
	"fechaPublicacion" DATE NOT NULL,
	"idFuente" integer NOT NULL,
	"idAutor" integer NOT NULL,
	"idPublicidad" integer NOT NULL,
	"idCiudad" integer NOT NULL,
	CONSTRAINT "Publicaciones_pk" PRIMARY KEY ("idPublicacion")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Noticias" (
	"idNoticia" serial NOT NULL,
	"cantidadClics" integer NOT NULL,
	"idDiarioInternacional" integer,
	CONSTRAINT "Noticias_pk" PRIMARY KEY ("idNoticia")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Blogs" (
	"idBlog" serial NOT NULL,
	"idCategoría" integer NOT NULL,
	CONSTRAINT "Blogs_pk" PRIMARY KEY ("idBlog")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Categorías" (
	"idCategoría" serial NOT NULL,
	"nombre" varchar NOT NULL,
	CONSTRAINT "Categorías_pk" PRIMARY KEY ("idCategoría")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Fuentes" (
	"idFuente" serial NOT NULL,
	"nombre" integer NOT NULL,
	CONSTRAINT "Fuentes_pk" PRIMARY KEY ("idFuente")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Autores" (
	"idAutor" serial NOT NULL,
	"nombre" varchar NOT NULL,
	"apellido" varchar NOT NULL,
	"URLfoto" varchar NOT NULL,
	"idRedSocial" integer NOT NULL,
	"idRol" integer NOT NULL,
	CONSTRAINT "Autores_pk" PRIMARY KEY ("idAutor")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.RedesSociales" (
	"idRedSocial" serial NOT NULL,
	"nombreUsuario" varchar NOT NULL,
	"URL" integer NOT NULL,
	CONSTRAINT "RedesSociales_pk" PRIMARY KEY ("idRedSocial")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Roles" (
	"idRol" serial NOT NULL,
	"nombre" varchar NOT NULL,
	CONSTRAINT "Roles_pk" PRIMARY KEY ("idRol")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Publicidades" (
	"idPublicidad" serial NOT NULL,
	"URL" integer NOT NULL,
	"mensaje" integer NOT NULL,
	"idContenidoAudiovisual" integer NOT NULL,
	CONSTRAINT "Publicidades_pk" PRIMARY KEY ("idPublicidad")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ContenidosAudiovisuales" (
	"idContenidoAudiovisual" serial NOT NULL,
	"URL" varchar NOT NULL,
	"fechaPublicacion" DATE NOT NULL,
	"idTipoContenido" integer NOT NULL,
	CONSTRAINT "ContenidosAudiovisuales_pk" PRIMARY KEY ("idContenidoAudiovisual")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.tiposContenidosAudiovisuales" (
	"idTipoContenido" serial NOT NULL,
	"nombre" varchar NOT NULL,
	CONSTRAINT "tiposContenidosAudiovisuales_pk" PRIMARY KEY ("idTipoContenido")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Usuarios" (
	"idUsuario" serial NOT NULL,
	"nombre" varchar NOT NULL,
	"apellido" varchar NOT NULL,
	"email" varchar NOT NULL UNIQUE,
	"contraseña" varchar NOT NULL,
	"numeroTelefono" integer NOT NULL,
	"new_field" integer NOT NULL,
	CONSTRAINT "Usuarios_pk" PRIMARY KEY ("idUsuario")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.TiposDeSuscripciones" (
	"idTipoSuscripcion" serial NOT NULL,
	"nombre" varchar NOT NULL,
	"precio" DECIMAL NOT NULL,
	"descripción" varchar NOT NULL,
	CONSTRAINT "TiposDeSuscripciones_pk" PRIMARY KEY ("idTipoSuscripcion")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Suscripciones" (
	"idUsuario" integer NOT NULL,
	"idTipoSuscripcion" integer NOT NULL,
	"precioPagado" DECIMAL NOT NULL,
	"fechaInicio" DATE NOT NULL,
	"fechaFin" DATE NOT NULL,
	CONSTRAINT "Suscripciones_pk" PRIMARY KEY ("idUsuario")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.NoticiasGuardadas" (
	"idUsuario" integer NOT NULL,
	"idNoticia" integer NOT NULL,
	"fechaGuardado" DATE NOT NULL,
	CONSTRAINT "NoticiasGuardadas_pk" PRIMARY KEY ("idUsuario")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.VIsualizaciones" (
	"idVisualización" serial NOT NULL,
	"idPublicación" integer NOT NULL,
	"idUsuario" integer NOT NULL,
	"fechaVIsta" DATE NOT NULL,
	CONSTRAINT "VIsualizaciones_pk" PRIMARY KEY ("idVisualización")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Secciones" (
	"idSección" serial NOT NULL,
	"nombre" varchar NOT NULL,
	CONSTRAINT "Secciones_pk" PRIMARY KEY ("idSección")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ClasificacionesNoticias" (
	"idNoticia" integer NOT NULL,
	"idSección" integer NOT NULL,
	CONSTRAINT "ClasificacionesNoticias_pk" PRIMARY KEY ("idNoticia","idSección")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ComentariosDeNoticias" (
	"idNoticia" integer NOT NULL,
	"idUsuario" integer NOT NULL,
	"comentario" varchar,
	CONSTRAINT "ComentariosDeNoticias_pk" PRIMARY KEY ("idNoticia","idUsuario")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Ciudades" (
	"idCiudad" serial NOT NULL,
	"nombre" varchar NOT NULL,
	CONSTRAINT "Ciudades_pk" PRIMARY KEY ("idCiudad")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.PalabrasClaves" (
	"idPalabraClave" serial NOT NULL,
	"nombre" varchar NOT NULL,
	"descripción" varchar NOT NULL,
	CONSTRAINT "PalabrasClaves_pk" PRIMARY KEY ("idPalabraClave")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.EtiquetasDeNoticias" (
	"idNoticia" integer NOT NULL,
	"idPalabraClave" integer NOT NULL,
	CONSTRAINT "EtiquetasDeNoticias_pk" PRIMARY KEY ("idNoticia","idPalabraClave")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ContenidosAudivisualesPublicaciones" (
	"idContenidoAudioVisual" integer NOT NULL,
	"IdPublicación" integer NOT NULL,
	CONSTRAINT "ContenidosAudivisualesPublicaciones_pk" PRIMARY KEY ("idContenidoAudioVisual","IdPublicación")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.DiariosInternacionales" (
	"idDiario" serial NOT NULL,
	"nombre" integer NOT NULL,
	"idPais" integer NOT NULL,
	CONSTRAINT "DiariosInternacionales_pk" PRIMARY KEY ("idDiario")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Países" (
	"idPaís" serial NOT NULL,
	"nombre" integer NOT NULL,
	CONSTRAINT "Países_pk" PRIMARY KEY ("idPaís")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.NoticiasMásVistas" (
	"idNoticia" integer NOT NULL,
	CONSTRAINT "NoticiasMásVistas_pk" PRIMARY KEY ("idNoticia")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Publicaciones" ADD CONSTRAINT "Publicaciones_fk0" FOREIGN KEY ("idFuente") REFERENCES "Fuentes"("idFuente");
ALTER TABLE "Publicaciones" ADD CONSTRAINT "Publicaciones_fk1" FOREIGN KEY ("idAutor") REFERENCES "Autores"("idAutor");
ALTER TABLE "Publicaciones" ADD CONSTRAINT "Publicaciones_fk2" FOREIGN KEY ("idPublicidad") REFERENCES "Publicidades"("idPublicidad");
ALTER TABLE "Publicaciones" ADD CONSTRAINT "Publicaciones_fk3" FOREIGN KEY ("idCiudad") REFERENCES "Ciudades"("idCiudad");

ALTER TABLE "Noticias" ADD CONSTRAINT "Noticias_fk0" FOREIGN KEY ("idNoticia") REFERENCES "Publicaciones"("idPublicacion");
ALTER TABLE "Noticias" ADD CONSTRAINT "Noticias_fk1" FOREIGN KEY ("idDiarioInternacional") REFERENCES "DiariosInternacionales"("idDiario");

ALTER TABLE "Blogs" ADD CONSTRAINT "Blogs_fk0" FOREIGN KEY ("idBlog") REFERENCES "Publicaciones"("idPublicacion");
ALTER TABLE "Blogs" ADD CONSTRAINT "Blogs_fk1" FOREIGN KEY ("idCategoría") REFERENCES "Categorías"("idCategoría");



ALTER TABLE "Autores" ADD CONSTRAINT "Autores_fk0" FOREIGN KEY ("idRedSocial") REFERENCES "RedesSociales"("idRedSocial");
ALTER TABLE "Autores" ADD CONSTRAINT "Autores_fk1" FOREIGN KEY ("idRol") REFERENCES "Roles"("idRol");



ALTER TABLE "Publicidades" ADD CONSTRAINT "Publicidades_fk0" FOREIGN KEY ("idContenidoAudiovisual") REFERENCES "contenidosAudiovisuales"("idContenidoAudiovisual");

ALTER TABLE "ContenidosAudiovisuales" ADD CONSTRAINT "ContenidosAudiovisuales_fk0" FOREIGN KEY ("idTipoContenido") REFERENCES "tiposContenidosAudiovisuales"("idTipoContenido");




ALTER TABLE "Suscripciones" ADD CONSTRAINT "Suscripciones_fk0" FOREIGN KEY ("idUsuario") REFERENCES "Usuarios"("idUsuario");
ALTER TABLE "Suscripciones" ADD CONSTRAINT "Suscripciones_fk1" FOREIGN KEY ("idTipoSuscripcion") REFERENCES "TiposDeSuscripciones"("idTipoSuscripcion");

ALTER TABLE "NoticiasGuardadas" ADD CONSTRAINT "NoticiasGuardadas_fk0" FOREIGN KEY ("idUsuario") REFERENCES "Usuarios"("idUsuario");
ALTER TABLE "NoticiasGuardadas" ADD CONSTRAINT "NoticiasGuardadas_fk1" FOREIGN KEY ("idNoticia") REFERENCES "Noticias"("idNoticia");

ALTER TABLE "VIsualizaciones" ADD CONSTRAINT "VIsualizaciones_fk0" FOREIGN KEY ("idPublicación") REFERENCES "Publicaciones"("idPublicacion");
ALTER TABLE "VIsualizaciones" ADD CONSTRAINT "VIsualizaciones_fk1" FOREIGN KEY ("idUsuario") REFERENCES "Usuarios"("idUsuario");


ALTER TABLE "ClasificacionesNoticias" ADD CONSTRAINT "ClasificacionesNoticias_fk0" FOREIGN KEY ("idNoticia") REFERENCES "Noticias"("idNoticia");
ALTER TABLE "ClasificacionesNoticias" ADD CONSTRAINT "ClasificacionesNoticias_fk1" FOREIGN KEY ("idSección") REFERENCES "Secciones"("idSección");

ALTER TABLE "ComentariosDeNoticias" ADD CONSTRAINT "ComentariosDeNoticias_fk0" FOREIGN KEY ("idNoticia") REFERENCES "Noticias"("idNoticia");
ALTER TABLE "ComentariosDeNoticias" ADD CONSTRAINT "ComentariosDeNoticias_fk1" FOREIGN KEY ("idUsuario") REFERENCES "Usuarios"("idUsuario");



ALTER TABLE "EtiquetasDeNoticias" ADD CONSTRAINT "EtiquetasDeNoticias_fk0" FOREIGN KEY ("idNoticia") REFERENCES "Noticias"("idNoticia");
ALTER TABLE "EtiquetasDeNoticias" ADD CONSTRAINT "EtiquetasDeNoticias_fk1" FOREIGN KEY ("idPalabraClave") REFERENCES "PalabrasClaves"("idPalabraClave");

ALTER TABLE "ContenidosAudivisualesPublicaciones" ADD CONSTRAINT "ContenidosAudivisualesPublicaciones_fk0" FOREIGN KEY ("idContenidoAudioVisual") REFERENCES "ContenidosAudiovisuales"("idContenidoAudiovisual");
ALTER TABLE "ContenidosAudivisualesPublicaciones" ADD CONSTRAINT "ContenidosAudivisualesPublicaciones_fk1" FOREIGN KEY ("IdPublicación") REFERENCES "Publicaciones"("idPublicacion");

ALTER TABLE "DiariosInternacionales" ADD CONSTRAINT "DiariosInternacionales_fk0" FOREIGN KEY ("idPais") REFERENCES "Países"("idPaís");


ALTER TABLE "NoticiasMásVistas" ADD CONSTRAINT "NoticiasMásVistas_fk0" FOREIGN KEY ("idNoticia") REFERENCES "Noticias"("idNoticia");



























