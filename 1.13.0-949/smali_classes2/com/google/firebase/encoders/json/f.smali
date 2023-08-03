.class final Lcom/google/firebase/encoders/json/f;
.super Ljava/lang/Object;
.source "JsonValueObjectEncoderContext.java"

# interfaces
.implements Lcom/google/firebase/encoders/e;
.implements Lcom/google/firebase/encoders/g;


# instance fields
.field private a:Lcom/google/firebase/encoders/json/f;

.field private b:Z

.field private final c:Landroid/util/JsonWriter;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/firebase/encoders/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/encoders/json/f;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->a:Lcom/google/firebase/encoders/json/f;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/f;->b:Z

    .line 12
    iget-object v0, p1, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    .line 13
    iget-object v0, p1, Lcom/google/firebase/encoders/json/f;->d:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->d:Ljava/util/Map;

    .line 14
    iget-object v0, p1, Lcom/google/firebase/encoders/json/f;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->e:Ljava/util/Map;

    .line 15
    iget-object v0, p1, Lcom/google/firebase/encoders/json/f;->f:Lcom/google/firebase/encoders/d;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->f:Lcom/google/firebase/encoders/d;

    .line 16
    iget-boolean p1, p1, Lcom/google/firebase/encoders/json/f;->g:Z

    iput-boolean p1, p0, Lcom/google/firebase/encoders/json/f;->g:Z

    return-void
.end method

.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/d;Z)V
    .locals 1
    .param p1    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/d<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/f<",
            "*>;>;",
            "Lcom/google/firebase/encoders/d<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->a:Lcom/google/firebase/encoders/json/f;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/f;->b:Z

    .line 4
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/encoders/json/f;->d:Ljava/util/Map;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/encoders/json/f;->e:Ljava/util/Map;

    .line 7
    iput-object p4, p0, Lcom/google/firebase/encoders/json/f;->f:Lcom/google/firebase/encoders/d;

    .line 8
    iput-boolean p5, p0, Lcom/google/firebase/encoders/json/f;->g:Z

    return-void
.end method

.method private G(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private J(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/encoders/json/f;->x(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method private K(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/encoders/json/f;->x(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method private L()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/f;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->a:Lcom/google/firebase/encoders/json/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->a:Lcom/google/firebase/encoders/json/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/encoders/json/f;->b:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->a:Lcom/google/firebase/encoders/json/f;

    .line 6
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/f;->v(I)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/f;->w(J)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/f;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->K(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->J(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/f;->E(Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public E(Z)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public F([B)Lcom/google/firebase/encoders/json/f;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-object p0
.end method

.method H()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method

.method I(Lcom/google/firebase/encoders/d;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/google/firebase/encoders/json/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 2
    :cond_0
    invoke-interface {p1, p2, p0}, Lcom/google/firebase/encoders/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic a(J)Lcom/google/firebase/encoders/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->w(J)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(I)Lcom/google/firebase/encoders/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->v(I)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;)Lcom/google/firebase/encoders/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->y(Ljava/lang/String;)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/firebase/encoders/c;Z)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/encoders/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->D(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/firebase/encoders/c;J)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/encoders/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/f;->B(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/firebase/encoders/c;I)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/encoders/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->A(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e([B)Lcom/google/firebase/encoders/g;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->F([B)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/google/firebase/encoders/c;F)Lcom/google/firebase/encoders/e;
    .locals 2
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/encoders/c;->b()Ljava/lang/String;

    move-result-object p1

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/encoders/json/f;->z(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/firebase/encoders/c;)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/encoders/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->s(Ljava/lang/String;)Lcom/google/firebase/encoders/e;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/firebase/encoders/c;D)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/encoders/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/f;->z(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/String;Z)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->D(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/String;D)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/f;->z(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/String;J)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/f;->B(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/String;I)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->A(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public m(Lcom/google/firebase/encoders/c;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/firebase/encoders/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->C(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Object;)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/encoders/json/f;->x(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o(Z)Lcom/google/firebase/encoders/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->E(Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/e;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->C(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q(D)Lcom/google/firebase/encoders/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/f;->t(D)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r(F)Lcom/google/firebase/encoders/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->u(F)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;)Lcom/google/firebase/encoders/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    new-instance v0, Lcom/google/firebase/encoders/json/f;

    invoke-direct {v0, p0}, Lcom/google/firebase/encoders/json/f;-><init>(Lcom/google/firebase/encoders/json/f;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/f;->a:Lcom/google/firebase/encoders/json/f;

    .line 3
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 4
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 5
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->a:Lcom/google/firebase/encoders/json/f;

    return-object p1
.end method

.method public t(D)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public u(F)Lcom/google/firebase/encoders/json/f;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public v(I)Lcom/google/firebase/encoders/json/f;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public w(J)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method x(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/json/f;->G(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    aput-object p1, v0, v1

    const-string p1, "%s cannot be encoded inline"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    .line 5
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 6
    iget-object p2, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-object p0

    .line 7
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8
    instance-of p2, p1, [B

    if-eqz p2, :cond_4

    .line 9
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->F([B)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-object p2, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 11
    instance-of p2, p1, [I

    if-eqz p2, :cond_5

    .line 12
    check-cast p1, [I

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_a

    aget v0, p1, v1

    .line 13
    iget-object v2, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_5
    instance-of p2, p1, [J

    if-eqz p2, :cond_6

    .line 15
    check-cast p1, [J

    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    .line 16
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/encoders/json/f;->w(J)Lcom/google/firebase/encoders/json/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_6
    instance-of p2, p1, [D

    if-eqz p2, :cond_7

    .line 18
    check-cast p1, [D

    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    .line 19
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 20
    :cond_7
    instance-of p2, p1, [Z

    if-eqz p2, :cond_8

    .line 21
    check-cast p1, [Z

    array-length p2, p1

    :goto_4
    if-ge v1, p2, :cond_a

    aget-boolean v0, p1, v1

    .line 22
    iget-object v2, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 23
    :cond_8
    instance-of p2, p1, [Ljava/lang/Number;

    if-eqz p2, :cond_9

    .line 24
    check-cast p1, [Ljava/lang/Number;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    .line 25
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/encoders/json/f;->x(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 26
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    .line 27
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/encoders/json/f;->x(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 29
    :cond_b
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_d

    .line 30
    check-cast p1, Ljava/util/Collection;

    .line 31
    iget-object p2, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 33
    invoke-virtual {p0, p2, v1}, Lcom/google/firebase/encoders/json/f;->x(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    goto :goto_7

    .line 34
    :cond_c
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 35
    :cond_d
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_f

    .line 36
    check-cast p1, Ljava/util/Map;

    .line 37
    iget-object p2, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 40
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/google/firebase/encoders/json/f;->C(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/f;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Lcom/google/firebase/encoders/EncodingException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    .line 43
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 44
    :cond_e
    iget-object p1, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-object p0

    .line 45
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/d;

    if-eqz v0, :cond_10

    .line 46
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/encoders/json/f;->I(Lcom/google/firebase/encoders/d;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1

    .line 47
    :cond_10
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/f;

    if-eqz v0, :cond_11

    .line 48
    invoke-interface {v0, p1, p0}, Lcom/google/firebase/encoders/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 49
    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    .line 50
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/f;->y(Ljava/lang/String;)Lcom/google/firebase/encoders/json/f;

    return-object p0

    .line 51
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->f:Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/encoders/json/f;->I(Lcom/google/firebase/encoders/d;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/String;)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public z(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/f;->L()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/encoders/json/f;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/f;->t(D)Lcom/google/firebase/encoders/json/f;

    move-result-object p1

    return-object p1
.end method
