.class public final Lcom/google/firebase/encoders/json/e;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lm3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/json/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm3/b<",
        "Lcom/google/firebase/encoders/json/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lcom/google/firebase/encoders/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/firebase/encoders/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/google/firebase/encoders/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/google/firebase/encoders/json/e$b;


# instance fields
.field private final a:Ljava/util/Map;
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

.field private final b:Ljava/util/Map;
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

.field private c:Lcom/google/firebase/encoders/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/encoders/json/b;->b()Lcom/google/firebase/encoders/d;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/json/e;->e:Lcom/google/firebase/encoders/d;

    .line 2
    invoke-static {}, Lcom/google/firebase/encoders/json/c;->b()Lcom/google/firebase/encoders/f;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/json/e;->f:Lcom/google/firebase/encoders/f;

    .line 3
    invoke-static {}, Lcom/google/firebase/encoders/json/d;->b()Lcom/google/firebase/encoders/f;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/encoders/json/e;->g:Lcom/google/firebase/encoders/f;

    .line 4
    new-instance v0, Lcom/google/firebase/encoders/json/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/json/e$b;-><init>(Lcom/google/firebase/encoders/json/e$a;)V

    sput-object v0, Lcom/google/firebase/encoders/json/e;->h:Lcom/google/firebase/encoders/json/e$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/e;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/e;->b:Ljava/util/Map;

    .line 4
    sget-object v0, Lcom/google/firebase/encoders/json/e;->e:Lcom/google/firebase/encoders/d;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/e;->c:Lcom/google/firebase/encoders/d;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/e;->d:Z

    .line 6
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/encoders/json/e;->f:Lcom/google/firebase/encoders/f;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/e;->n(Ljava/lang/Class;Lcom/google/firebase/encoders/f;)Lcom/google/firebase/encoders/json/e;

    .line 7
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/google/firebase/encoders/json/e;->g:Lcom/google/firebase/encoders/f;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/e;->n(Ljava/lang/Class;Lcom/google/firebase/encoders/f;)Lcom/google/firebase/encoders/json/e;

    .line 8
    const-class v0, Ljava/util/Date;

    sget-object v1, Lcom/google/firebase/encoders/json/e;->h:Lcom/google/firebase/encoders/json/e$b;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/encoders/json/e;->n(Ljava/lang/Class;Lcom/google/firebase/encoders/f;)Lcom/google/firebase/encoders/json/e;

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/encoders/json/e;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/encoders/json/e;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/encoders/json/e;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/encoders/json/e;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/encoders/json/e;)Lcom/google/firebase/encoders/d;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/encoders/json/e;->c:Lcom/google/firebase/encoders/d;

    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/encoders/json/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/firebase/encoders/json/e;->d:Z

    return p0
.end method

.method static synthetic j(Ljava/lang/Object;Lcom/google/firebase/encoders/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic k(Ljava/lang/String;Lcom/google/firebase/encoders/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/firebase/encoders/g;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/g;

    return-void
.end method

.method static synthetic l(Ljava/lang/Boolean;Lcom/google/firebase/encoders/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/firebase/encoders/g;->o(Z)Lcom/google/firebase/encoders/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lcom/google/firebase/encoders/f;)Lm3/b;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/encoders/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/e;->n(Ljava/lang/Class;Lcom/google/firebase/encoders/f;)Lcom/google/firebase/encoders/json/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Class;Lcom/google/firebase/encoders/d;)Lm3/b;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/encoders/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/e;->m(Ljava/lang/Class;Lcom/google/firebase/encoders/d;)Lcom/google/firebase/encoders/json/e;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/google/firebase/encoders/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/firebase/encoders/json/e$a;

    invoke-direct {v0, p0}, Lcom/google/firebase/encoders/json/e$a;-><init>(Lcom/google/firebase/encoders/json/e;)V

    return-object v0
.end method

.method public h(Lm3/a;)Lcom/google/firebase/encoders/json/e;
    .locals 0
    .param p1    # Lm3/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-interface {p1, p0}, Lm3/a;->a(Lm3/b;)V

    return-object p0
.end method

.method public i(Z)Lcom/google/firebase/encoders/json/e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/google/firebase/encoders/json/e;->d:Z

    return-object p0
.end method

.method public m(Ljava/lang/Class;Lcom/google/firebase/encoders/d;)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/encoders/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/encoders/d<",
            "-TT;>;)",
            "Lcom/google/firebase/encoders/json/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/google/firebase/encoders/json/e;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public n(Ljava/lang/Class;Lcom/google/firebase/encoders/f;)Lcom/google/firebase/encoders/json/e;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/encoders/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/encoders/f<",
            "-TT;>;)",
            "Lcom/google/firebase/encoders/json/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/encoders/json/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/google/firebase/encoders/json/e;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public o(Lcom/google/firebase/encoders/d;)Lcom/google/firebase/encoders/json/e;
    .locals 0
    .param p1    # Lcom/google/firebase/encoders/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/encoders/json/e;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/encoders/json/e;->c:Lcom/google/firebase/encoders/d;

    return-object p0
.end method
