.class public final Lcom/google/android/gms/common/api/i$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Lcom/google/android/gms/common/internal/i0;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/gms/common/api/internal/l;

.field private l:I

.field private m:Lcom/google/android/gms/common/api/i$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/os/Looper;

.field private o:Lcom/google/android/gms/common/e;

.field private p:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/google/android/gms/signin/f;",
            "Lcom/google/android/gms/signin/a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->c:Ljava/util/Set;

    .line 3
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->h:Ljava/util/Map;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/i$a;->l:I

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/e;->x()Lcom/google/android/gms/common/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->o:Lcom/google/android/gms/common/e;

    .line 6
    sget-object v0, Lcom/google/android/gms/signin/e;->c:Lcom/google/android/gms/common/api/a$a;

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->p:Lcom/google/android/gms/common/api/a$a;

    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->r:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/i$a;->i:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->n:Landroid/os/Looper;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/i$a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/i$b;Lcom/google/android/gms/common/api/i$c;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/i$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/i$a;-><init>(Landroid/content/Context;)V

    const-string p1, "Must provide a connected listener"

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/api/i$a;->q:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Must provide a connection failed listener"

    .line 15
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/api/i$a;->r:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final varargs q(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 3
    .param p2    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d;",
            ">(",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$e;

    move-result-object v0

    const-string v1, "Base client builder must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$e;

    new-instance v1, Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/a$e;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v2, p3, v0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/i$a;->h:Ljava/util/Map;

    new-instance p3, Lcom/google/android/gms/common/internal/i0;

    .line 6
    invoke-direct {p3, v1}, Lcom/google/android/gms/common/internal/i0;-><init>(Ljava/util/Set;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/i$a;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "+",
            "Lcom/google/android/gms/common/api/a$d$e;",
            ">;)",
            "Lcom/google/android/gms/common/api/i$a;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$e;

    move-result-object p1

    const-string v0, "Base client builder must not be null"

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/a$e;

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/a$e;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->c:Ljava/util/Set;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->b:Ljava/util/Set;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d$c;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a$d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d$c;",
            ">(",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;)",
            "Lcom/google/android/gms/common/api/i$a;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$e;

    move-result-object p1

    const-string v0, "Base client builder must not be null"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/a$e;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/a$e;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/i$a;->c:Ljava/util/Set;

    .line 7
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/google/android/gms/common/api/i$a;->b:Ljava/util/Set;

    .line 8
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs c(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d$c;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a$d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d$c;",
            ">(",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/i$a;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Null options are not permitted for this Api"

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/i$a;->q(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public varargs d(Lcom/google/android/gms/common/api/a;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/i$a;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/api/a$d$e;",
            ">(",
            "Lcom/google/android/gms/common/api/a<",
            "+",
            "Lcom/google/android/gms/common/api/a$d$e;",
            ">;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")",
            "Lcom/google/android/gms/common/api/i$a;"
        }
    .end annotation

    const-string v0, "Api must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/common/api/i$a;->q(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;[Lcom/google/android/gms/common/api/Scope;)V

    return-object p0
.end method

.method public e(Lcom/google/android/gms/common/api/i$b;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Listener must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->q:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(Lcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/i$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Listener must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->r:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Scope;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Scope must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public h()Lcom/google/android/gms/common/api/i;
    .locals 22
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "must call addApi() to add at least one API"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/i$a;->p()Lcom/google/android/gms/common/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->n()Ljava/util/Map;

    move-result-object v3

    new-instance v11, Landroidx/collection/ArrayMap;

    .line 3
    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v14, Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    .line 6
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v4, 0x0

    move-object/from16 v16, v4

    const/16 v17, 0x0

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/gms/common/api/a;

    iget-object v4, v1, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    .line 7
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 8
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 9
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/google/android/gms/common/api/internal/z3;

    invoke-direct {v9, v10, v4}, Lcom/google/android/gms/common/api/internal/z3;-><init>(Lcom/google/android/gms/common/api/a;Z)V

    .line 10
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v10}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/google/android/gms/common/api/a$a;

    iget-object v5, v1, Lcom/google/android/gms/common/api/i$a;->i:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/gms/common/api/i$a;->n:Landroid/os/Looper;

    move-object/from16 v4, v19

    move-object v7, v0

    move-object/from16 v8, v18

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v10, v20

    .line 12
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;Lcom/google/android/gms/common/api/i$b;Lcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v4

    .line 13
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v5

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/common/api/a$e;->b()I

    move-result v5

    if-ne v5, v2, :cond_3

    if-eqz v18, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 15
    :cond_3
    :goto_2
    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v16, :cond_4

    move-object/from16 v16, v21

    goto :goto_0

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x15

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be used with "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v16, :cond_8

    if-nez v17, :cond_7

    .line 18
    iget-object v3, v1, Lcom/google/android/gms/common/api/i$a;->a:Landroid/accounts/Account;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead"

    .line 19
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/common/internal/u;->s(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/common/api/i$a;->b:Ljava/util/Set;

    iget-object v4, v1, Lcom/google/android/gms/common/api/i$a;->c:Ljava/util/Set;

    .line 20
    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    .line 21
    invoke-static {v3, v5, v4}, Lcom/google/android/gms/common/internal/u;->s(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 22
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/common/api/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x52

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "With using "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", GamesOptions can only be specified within GoogleSignInOptions.Builder"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_8
    :goto_4
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 25
    invoke-static {v3, v2}, Lcom/google/android/gms/common/api/internal/j1;->K(Ljava/lang/Iterable;Z)I

    move-result v16

    new-instance v2, Lcom/google/android/gms/common/api/internal/j1;

    iget-object v5, v1, Lcom/google/android/gms/common/api/i$a;->i:Landroid/content/Context;

    new-instance v6, Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    invoke-direct {v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/common/api/i$a;->n:Landroid/os/Looper;

    iget-object v9, v1, Lcom/google/android/gms/common/api/i$a;->o:Lcom/google/android/gms/common/e;

    iget-object v10, v1, Lcom/google/android/gms/common/api/i$a;->p:Lcom/google/android/gms/common/api/a$a;

    iget-object v12, v1, Lcom/google/android/gms/common/api/i$a;->q:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/google/android/gms/common/api/i$a;->r:Ljava/util/ArrayList;

    iget v3, v1, Lcom/google/android/gms/common/api/i$a;->l:I

    move-object v4, v2

    move-object v8, v0

    move-object v0, v15

    move v15, v3

    move-object/from16 v17, v0

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/common/api/internal/j1;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/e;Lcom/google/android/gms/common/api/a$a;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    invoke-static {}, Lcom/google/android/gms/common/api/i;->J()Ljava/util/Set;

    move-result-object v3

    .line 27
    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/api/i;->J()Ljava/util/Set;

    move-result-object v0

    .line 28
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, v1, Lcom/google/android/gms/common/api/i$a;->l:I

    if-ltz v0, :cond_9

    iget-object v0, v1, Lcom/google/android/gms/common/api/i$a;->k:Lcom/google/android/gms/common/api/internal/l;

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/q3;->u(Lcom/google/android/gms/common/api/internal/l;)Lcom/google/android/gms/common/api/internal/q3;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/common/api/i$a;->l:I

    iget-object v4, v1, Lcom/google/android/gms/common/api/i$a;->m:Lcom/google/android/gms/common/api/i$c;

    .line 31
    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/common/api/internal/q3;->v(ILcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/i$c;)V

    :cond_9
    return-object v2

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/i$a;
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/i$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/l;-><init>(Landroid/app/Activity;)V

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "clientId must be non-negative"

    .line 2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/api/i$a;->l:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/i$a;->m:Lcom/google/android/gms/common/api/i$c;

    iput-object v0, p0, Lcom/google/android/gms/common/api/i$a;->k:Lcom/google/android/gms/common/api/internal/l;

    return-object p0
.end method

.method public j(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/i$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/api/i$a;->i(Landroidx/fragment/app/FragmentActivity;ILcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/i$a;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/android/gms/common/api/i$a;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/i$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public l(I)Lcom/google/android/gms/common/api/i$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/api/i$a;->d:I

    return-object p0
.end method

.method public m(Landroid/os/Handler;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Handler must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/i$a;->n:Landroid/os/Looper;

    return-object p0
.end method

.method public n(Landroid/view/View;)Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "View must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/i$a;->e:Landroid/view/View;

    return-object p0
.end method

.method public o()Lcom/google/android/gms/common/api/i$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "<<default account>>"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/i$a;->k(Ljava/lang/String;)Lcom/google/android/gms/common/api/i$a;

    return-object p0
.end method

.method public final p()Lcom/google/android/gms/common/internal/f;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/a;->j:Lcom/google/android/gms/signin/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/signin/e;->g:Lcom/google/android/gms/common/api/a;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/i$a;->j:Ljava/util/Map;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/a;

    :cond_0
    move-object v9, v0

    new-instance v0, Lcom/google/android/gms/common/internal/f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/i$a;->a:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gms/common/api/i$a;->b:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/android/gms/common/api/i$a;->h:Ljava/util/Map;

    iget v5, p0, Lcom/google/android/gms/common/api/i$a;->d:I

    iget-object v6, p0, Lcom/google/android/gms/common/api/i$a;->e:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/gms/common/api/i$a;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/common/api/i$a;->g:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/a;Z)V

    return-object v0
.end method
