.class final Lcom/squareup/moshi/adapters/c$b;
.super Lcom/squareup/moshi/h;
.source "PolymorphicJsonAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/adapters/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final e:Lcom/squareup/moshi/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field final f:Lcom/squareup/moshi/JsonReader$b;

.field final g:Lcom/squareup/moshi/JsonReader$b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/squareup/moshi/h;)V
    .locals 0
    .param p5    # Lcom/squareup/moshi/h;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/squareup/moshi/h<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/moshi/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/squareup/moshi/adapters/c$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/squareup/moshi/adapters/c$b;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/squareup/moshi/adapters/c$b;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/squareup/moshi/adapters/c$b;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/squareup/moshi/adapters/c$b;->e:Lcom/squareup/moshi/h;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    .line 7
    invoke-static {p3}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/moshi/adapters/c$b;->f:Lcom/squareup/moshi/JsonReader$b;

    new-array p1, p4, [Ljava/lang/String;

    .line 8
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/moshi/JsonReader$b;->a([Ljava/lang/String;)Lcom/squareup/moshi/JsonReader$b;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/moshi/adapters/c$b;->g:Lcom/squareup/moshi/JsonReader$b;

    return-void
.end method

.method private a(Lcom/squareup/moshi/JsonReader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->b()V

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/squareup/moshi/adapters/c$b;->f:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonReader;->W(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->h0()V

    .line 5
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->l0()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/adapters/c$b;->g:Lcom/squareup/moshi/JsonReader$b;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/JsonReader;->X(Lcom/squareup/moshi/JsonReader$b;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/squareup/moshi/adapters/c$b;->e:Lcom/squareup/moshi/h;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/moshi/adapters/c$b;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/moshi/adapters/c$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' but found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->G()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Register a subtype for this label."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return v0

    .line 10
    :cond_3
    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing label for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/adapters/c$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->J()Lcom/squareup/moshi/JsonReader;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/squareup/moshi/JsonReader;->b0(Z)V

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/squareup/moshi/adapters/c$b;->a(Lcom/squareup/moshi/JsonReader;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/squareup/moshi/adapters/c$b;->e:Lcom/squareup/moshi/h;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/h;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/squareup/moshi/adapters/c$b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/h;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/h;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 8
    throw p1
.end method

.method public toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/squareup/moshi/adapters/c$b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/squareup/moshi/adapters/c$b;->e:Lcom/squareup/moshi/h;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected one of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/adapters/c$b;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Register this subtype."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/squareup/moshi/adapters/c$b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/moshi/h;

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/moshi/q;->d()Lcom/squareup/moshi/q;

    .line 8
    iget-object v2, p0, Lcom/squareup/moshi/adapters/c$b;->e:Lcom/squareup/moshi/h;

    if-eq v1, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/squareup/moshi/adapters/c$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/squareup/moshi/q;->A(Ljava/lang/String;)Lcom/squareup/moshi/q;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/moshi/adapters/c$b;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/squareup/moshi/q;->l0(Ljava/lang/String;)Lcom/squareup/moshi/q;

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/moshi/q;->b()I

    move-result v0

    .line 11
    invoke-virtual {v1, p1, p2}, Lcom/squareup/moshi/h;->toJson(Lcom/squareup/moshi/q;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/squareup/moshi/q;->k(I)V

    .line 13
    invoke-virtual {p1}, Lcom/squareup/moshi/q;->p()Lcom/squareup/moshi/q;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolymorphicJsonAdapter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/moshi/adapters/c$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
