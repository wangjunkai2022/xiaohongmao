.class Lcom/squareup/moshi/a$a;
.super Lcom/squareup/moshi/h;
.source "AdapterMethodsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/a;->create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/moshi/a$f;

.field final synthetic b:Lcom/squareup/moshi/h;

.field final synthetic c:Lcom/squareup/moshi/u;

.field final synthetic d:Lcom/squareup/moshi/a$f;

.field final synthetic e:Ljava/util/Set;

.field final synthetic f:Ljava/lang/reflect/Type;

.field final synthetic g:Lcom/squareup/moshi/a;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/a;Lcom/squareup/moshi/a$f;Lcom/squareup/moshi/h;Lcom/squareup/moshi/u;Lcom/squareup/moshi/a$f;Ljava/util/Set;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/a$a;->g:Lcom/squareup/moshi/a;

    iput-object p2, p0, Lcom/squareup/moshi/a$a;->a:Lcom/squareup/moshi/a$f;

    iput-object p3, p0, Lcom/squareup/moshi/a$a;->b:Lcom/squareup/moshi/h;

    iput-object p4, p0, Lcom/squareup/moshi/a$a;->c:Lcom/squareup/moshi/u;

    iput-object p5, p0, Lcom/squareup/moshi/a$a;->d:Lcom/squareup/moshi/a$f;

    iput-object p6, p0, Lcom/squareup/moshi/a$a;->e:Ljava/util/Set;

    iput-object p7, p0, Lcom/squareup/moshi/a$a;->f:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/squareup/moshi/h;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/a$a;->d:Lcom/squareup/moshi/a$f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/moshi/a$a;->b:Lcom/squareup/moshi/h;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/h;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, v0, Lcom/squareup/moshi/a$f;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->I()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->D()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/squareup/moshi/a$a;->d:Lcom/squareup/moshi/a$f;

    iget-object v1, p0, Lcom/squareup/moshi/a$a;->c:Lcom/squareup/moshi/u;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/moshi/a$f;->b(Lcom/squareup/moshi/u;Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 8
    :cond_2
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/a$a;->a:Lcom/squareup/moshi/a$f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/moshi/a$a;->b:Lcom/squareup/moshi/h;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/moshi/h;->toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v1, v0, Lcom/squareup/moshi/a$f;->g:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/squareup/moshi/q;->D()Lcom/squareup/moshi/q;

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/squareup/moshi/a$a;->c:Lcom/squareup/moshi/u;

    invoke-virtual {v0, v1, p1, p2}, Lcom/squareup/moshi/a$f;->e(Lcom/squareup/moshi/u;Lcom/squareup/moshi/q;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 7
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 8
    :cond_2
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/moshi/q;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/a$a;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/a$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
