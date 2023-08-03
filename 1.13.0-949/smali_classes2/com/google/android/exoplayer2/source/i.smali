.class public final Lcom/google/android/exoplayer2/source/i;
.super Lcom/google/android/exoplayer2/source/e;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/i$d;,
        Lcom/google/android/exoplayer2/source/i$c;,
        Lcom/google/android/exoplayer2/source/i$b;,
        Lcom/google/android/exoplayer2/source/i$f;,
        Lcom/google/android/exoplayer2/source/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/e<",
        "Lcom/google/android/exoplayer2/source/i$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x5

.field private static final B:Lcom/google/android/exoplayer2/b1;

.field private static final v:I = 0x0

.field private static final w:I = 0x1

.field private static final x:I = 0x2

.field private static final y:I = 0x3

.field private static final z:I = 0x4


# instance fields
.field private final j:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/i$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/w;",
            "Lcom/google/android/exoplayer2/source/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Z

.field private final r:Z

.field private s:Z

.field private t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/i$d;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/google/android/exoplayer2/source/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/i;->B:Lcom/google/android/exoplayer2/b1;

    return-void
.end method

.method public varargs constructor <init>(ZLcom/google/android/exoplayer2/source/z0;[Lcom/google/android/exoplayer2/source/z;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/i;-><init>(ZZLcom/google/android/exoplayer2/source/z0;[Lcom/google/android/exoplayer2/source/z;)V

    return-void
.end method

.method public varargs constructor <init>(ZZLcom/google/android/exoplayer2/source/z0;[Lcom/google/android/exoplayer2/source/z;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/e;-><init>()V

    .line 5
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p3}, Lcom/google/android/exoplayer2/source/z0;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Lcom/google/android/exoplayer2/source/z0;->e()Lcom/google/android/exoplayer2/source/z0;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 8
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->n:Ljava/util/IdentityHashMap;

    .line 9
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->o:Ljava/util/Map;

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    .line 12
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->t:Ljava/util/Set;

    .line 13
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->k:Ljava/util/Set;

    .line 14
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/i;->p:Ljava/util/Set;

    .line 15
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/i;->q:Z

    .line 16
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/i;->r:Z

    .line 17
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/i;->U(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/google/android/exoplayer2/source/z;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/z0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/z0$a;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/i;-><init>(ZLcom/google/android/exoplayer2/source/z0;[Lcom/google/android/exoplayer2/source/z;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/z;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/i;-><init>(Z[Lcom/google/android/exoplayer2/source/z;)V

    return-void
.end method

.method private A0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/i;->B0(Lcom/google/android/exoplayer2/source/i$d;)V

    return-void
.end method

.method private B0(Lcom/google/android/exoplayer2/source/i$d;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/source/i$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/i;->s:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->k0()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/i;->s:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private C0(Lcom/google/android/exoplayer2/source/z0;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/i;->l0()I

    move-result v2

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/z0;->getLength()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/z0;->e()Lcom/google/android/exoplayer2/source/z0;

    move-result-object p1

    .line 6
    invoke-interface {p1, v1, v2}, Lcom/google/android/exoplayer2/source/z0;->g(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object p1

    .line 7
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/i;->b0(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/i$d;

    move-result-object p2

    const/4 p3, 0x3

    .line 8
    new-instance v2, Lcom/google/android/exoplayer2/source/i$f;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/android/exoplayer2/source/i$f;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/i$d;)V

    .line 9
    invoke-virtual {v0, p3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 11
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/z0;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/z0;->e()Lcom/google/android/exoplayer2/source/z0;

    move-result-object p1

    :cond_5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 12
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method private F0(Lcom/google/android/exoplayer2/source/i$e;Lcom/google/android/exoplayer2/s2;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/source/i$e;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    iget v1, p1, Lcom/google/android/exoplayer2/source/i$e;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result p2

    iget v0, v0, Lcom/google/android/exoplayer2/source/i$e;->e:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/i$e;->e:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 4
    iget p1, p1, Lcom/google/android/exoplayer2/source/i$e;->d:I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/source/i;->a0(III)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->A0()V

    return-void
.end method

.method private G0()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/i;->s:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->t:Ljava/util/Set;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/i;->t:Ljava/util/Set;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/source/i;->q:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/z0;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/a;->z(Lcom/google/android/exoplayer2/s2;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->k0()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    .line 6
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static synthetic L(Lcom/google/android/exoplayer2/source/i;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i;->n0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static synthetic M()Lcom/google/android/exoplayer2/b1;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/i;->B:Lcom/google/android/exoplayer2/b1;

    return-object v0
.end method

.method private R(ILcom/google/android/exoplayer2/source/i$e;)V
    .locals 2

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    .line 3
    iget v0, v0, Lcom/google/android/exoplayer2/source/i$e;->e:I

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/source/i$e;->a(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/source/i$e;->a(II)V

    .line 7
    :goto_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/source/i;->a0(III)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->o:Ljava/util/Map;

    iget-object v0, p2, Lcom/google/android/exoplayer2/source/i$e;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/source/e;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->p:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/e;->C(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private W(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/i$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/i;->R(ILcom/google/android/exoplayer2/source/i$e;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private X(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/z;

    .line 4
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 5
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/z;

    .line 7
    new-instance v5, Lcom/google/android/exoplayer2/source/i$e;

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/source/i;->r:Z

    invoke-direct {v5, v4, v6}, Lcom/google/android/exoplayer2/source/i$e;-><init>(Lcom/google/android/exoplayer2/source/z;Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 8
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 10
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/i;->b0(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/i$d;

    move-result-object p2

    .line 11
    new-instance p3, Lcom/google/android/exoplayer2/source/i$f;

    invoke-direct {p3, p1, v2, p2}, Lcom/google/android/exoplayer2/source/i$f;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/i$d;)V

    .line 12
    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    .line 14
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_5
    return-void
.end method

.method private a0(III)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    .line 3
    iget v1, v0, Lcom/google/android/exoplayer2/source/i$e;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/source/i$e;->d:I

    .line 4
    iget v1, v0, Lcom/google/android/exoplayer2/source/i$e;->e:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/google/android/exoplayer2/source/i$e;->e:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b0(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/i$d;
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/i$d;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/i$d;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->k:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/i$e;

    .line 4
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/i$e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/e;->C(Ljava/lang/Object;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized d0(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/i$d;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/i$d;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/i$d;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e0(Lcom/google/android/exoplayer2/source/i$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/e;->D(Ljava/lang/Object;)V

    return-void
.end method

.method private static f0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static i0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/a;->C(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static j0(Lcom/google/android/exoplayer2/source/i$e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/i$e;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->E(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private k0()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private n0(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i;->d0(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->G0()V

    goto/16 :goto_2

    .line 6
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$f;

    .line 8
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/i$f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/source/z0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 9
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/i$f;->c:Lcom/google/android/exoplayer2/source/i$d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i;->B0(Lcom/google/android/exoplayer2/source/i$d;)V

    goto/16 :goto_2

    .line 10
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$f;

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    iget v2, p1, Lcom/google/android/exoplayer2/source/i$f;->a:I

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/z0;->a(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 12
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/i$f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/source/z0;->g(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 13
    iget v0, p1, Lcom/google/android/exoplayer2/source/i$f;->a:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/i$f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/source/i;->r0(II)V

    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/i$f;->c:Lcom/google/android/exoplayer2/source/i$d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i;->B0(Lcom/google/android/exoplayer2/source/i$d;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$f;

    .line 16
    iget v0, p1, Lcom/google/android/exoplayer2/source/i$f;->a:I

    .line 17
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/i$f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_5

    .line 18
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/z0;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/z0;->e()Lcom/google/android/exoplayer2/source/z0;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    goto :goto_0

    .line 20
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    invoke-interface {v3, v0, v2}, Lcom/google/android/exoplayer2/source/z0;->a(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    :goto_0
    sub-int/2addr v2, v1

    :goto_1
    if-lt v2, v0, :cond_6

    .line 21
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/i;->w0(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 22
    :cond_6
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/i$f;->c:Lcom/google/android/exoplayer2/source/i$d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i;->B0(Lcom/google/android/exoplayer2/source/i$d;)V

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$f;

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    iget v2, p1, Lcom/google/android/exoplayer2/source/i$f;->a:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/i$f;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/source/z0;->g(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 26
    iget v0, p1, Lcom/google/android/exoplayer2/source/i$f;->a:I

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/i$f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/source/i;->W(ILjava/util/Collection;)V

    .line 27
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/i$f;->c:Lcom/google/android/exoplayer2/source/i$d;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/i;->B0(Lcom/google/android/exoplayer2/source/i$d;)V

    :goto_2
    return v1
.end method

.method private o0(Lcom/google/android/exoplayer2/source/i$e;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/i$e;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/i$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/e;->K(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private r0(II)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/i$e;

    iget v2, v2, Lcom/google/android/exoplayer2/source/i$e;->e:I

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$e;

    invoke-interface {v3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$e;

    .line 6
    iput v0, p1, Lcom/google/android/exoplayer2/source/i$e;->d:I

    .line 7
    iput v2, p1, Lcom/google/android/exoplayer2/source/i$e;->e:I

    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result p1

    add-int/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/i$e;

    invoke-interface {v1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_3

    .line 4
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/i;->b0(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/i$d;

    move-result-object p3

    const/4 p4, 0x2

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/source/i$f;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/i$f;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/i$d;)V

    invoke-virtual {v0, p4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 8
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    return-void
.end method

.method private w0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i;->o:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/i$e;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r;->P()Lcom/google/android/exoplayer2/s2;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v1

    neg-int v1, v1

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/exoplayer2/source/i;->a0(III)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/source/i$e;->f:Z

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/i;->o0(Lcom/google/android/exoplayer2/source/i$e;)V

    return-void
.end method

.method private z0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    .line 1
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-static {v2, p1, p2}, Lcom/google/android/exoplayer2/util/z0;->d1(Ljava/util/List;II)V

    if-eqz v0, :cond_3

    .line 4
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/i;->b0(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/i$d;

    move-result-object p3

    .line 5
    new-instance p4, Lcom/google/android/exoplayer2/source/i$f;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/i$f;-><init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/i$d;)V

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 8
    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected declared-synchronized A()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/e;->A()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z0;->e()Lcom/google/android/exoplayer2/source/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/i;->s:Z

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->k:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/i;->d0(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized D0(Lcom/google/android/exoplayer2/source/z0;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/source/i;->C0(Lcom/google/android/exoplayer2/source/z0;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected bridge synthetic E(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/google/android/exoplayer2/source/i$e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/i;->g0(Lcom/google/android/exoplayer2/source/i$e;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized E0(Lcom/google/android/exoplayer2/source/z0;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/i;->C0(Lcom/google/android/exoplayer2/source/z0;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected bridge synthetic G(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/i$e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/i;->m0(Lcom/google/android/exoplayer2/source/i$e;I)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/i$e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/i;->t0(Lcom/google/android/exoplayer2/source/i$e;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method public declared-synchronized N(ILcom/google/android/exoplayer2/source/z;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/source/i;->X(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized O(ILcom/google/android/exoplayer2/source/z;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/i;->X(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized P(Lcom/google/android/exoplayer2/source/z;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/i;->N(ILcom/google/android/exoplayer2/source/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Q(Lcom/google/android/exoplayer2/source/z;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/i;->O(ILcom/google/android/exoplayer2/source/z;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized S(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/source/i;->X(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized T(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/i;->X(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized U(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/exoplayer2/source/i;->X(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized V(Ljava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/exoplayer2/source/z;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/i;->X(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Y()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/i;->l0()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/i;->x0(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Z(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/i;->l0()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/i;->y0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/i;->i0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/i;->f0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/z$a;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/source/i$e;

    new-instance v1, Lcom/google/android/exoplayer2/source/i$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/i$c;-><init>(Lcom/google/android/exoplayer2/source/i$a;)V

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/i;->r:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/i$e;-><init>(Lcom/google/android/exoplayer2/source/z;Z)V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/i$e;->f:Z

    .line 6
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/e;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/z;)V

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/i;->e0(Lcom/google/android/exoplayer2/source/i$e;)V

    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/i$e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    .line 10
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/r;->L(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/q;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/i;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->c0()V

    return-object p1
.end method

.method public e()Lcom/google/android/exoplayer2/b1;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/i;->B:Lcom/google/android/exoplayer2/b1;

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/w;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->n:Ljava/util/IdentityHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i$e;

    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/r;->g(Lcom/google/android/exoplayer2/source/w;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/i$e;->c:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/source/q;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->c0()V

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/i;->o0(Lcom/google/android/exoplayer2/source/i$e;)V

    return-void
.end method

.method protected g0(Lcom/google/android/exoplayer2/source/i$e;Lcom/google/android/exoplayer2/source/z$a;)Lcom/google/android/exoplayer2/source/z$a;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/i$e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/i$e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/z$a;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/x;->d:J

    iget-wide v3, p2, Lcom/google/android/exoplayer2/source/x;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/x;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/i;->j0(Lcom/google/android/exoplayer2/source/i$e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/z$a;->d(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/z$a;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized h0(I)Lcom/google/android/exoplayer2/source/z;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/i$e;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/i$e;->a:Lcom/google/android/exoplayer2/source/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized l0()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected m0(Lcom/google/android/exoplayer2/source/i$e;I)I
    .locals 0

    iget p1, p1, Lcom/google/android/exoplayer2/source/i$e;->e:I

    add-int/2addr p2, p1

    return p2
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized p()Lcom/google/android/exoplayer2/s2;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z0;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z0;->e()Lcom/google/android/exoplayer2/source/z0;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/z0;->g(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 7
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/source/i$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/i;->q:Z

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/source/i$b;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/z0;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p0(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/source/i;->s0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized q0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/i;->s0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected t0(Lcom/google/android/exoplayer2/source/i$e;Lcom/google/android/exoplayer2/source/z;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/i;->F0(Lcom/google/android/exoplayer2/source/i$e;Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method

.method public declared-synchronized u0(I)Lcom/google/android/exoplayer2/source/z;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/i;->h0(I)Lcom/google/android/exoplayer2/source/z;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, p1, v1, v2, v2}, Lcom/google/android/exoplayer2/source/i;->z0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected v()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/e;->v()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public declared-synchronized v0(ILandroid/os/Handler;Ljava/lang/Runnable;)Lcom/google/android/exoplayer2/source/z;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/i;->h0(I)Lcom/google/android/exoplayer2/source/z;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/android/exoplayer2/source/i;->z0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected w()V
    .locals 0

    return-void
.end method

.method public declared-synchronized x0(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/source/i;->z0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized y(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/e;->y(Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/source/h;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/h;-><init>(Lcom/google/android/exoplayer2/source/i;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i;->l:Landroid/os/Handler;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->G0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/source/z0;->g(II)Lcom/google/android/exoplayer2/source/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/i;->u:Lcom/google/android/exoplayer2/source/z0;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/i;->j:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/source/i;->W(ILjava/util/Collection;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/i;->A0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized y0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/i;->z0(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
