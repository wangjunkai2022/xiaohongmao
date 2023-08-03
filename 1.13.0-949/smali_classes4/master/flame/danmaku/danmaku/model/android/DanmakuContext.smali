.class public Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
.super Ljava/lang/Object;
.source "DanmakuContext.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;,
        Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;
    }
.end annotation


# instance fields
.field public A:Lmaster/flame/danmaku/danmaku/model/android/d;

.field public B:Lmaster/flame/danmaku/danmaku/model/android/c;

.field private C:Lmaster/flame/danmaku/danmaku/model/m$a;

.field public D:B

.field public a:Landroid/graphics/Typeface;

.field public b:I

.field public c:F

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:F

.field public m:Lmaster/flame/danmaku/danmaku/model/a;

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lmaster/flame/danmaku/danmaku/model/android/b;

.field private v:Z

.field private w:Z

.field public x:Lmaster/flame/danmaku/danmaku/model/b;

.field public y:Lmaster/flame/danmaku/danmaku/model/j;

.field public z:Lmaster/flame/danmaku/controller/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a:Landroid/graphics/Typeface;

    .line 3
    sget v0, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d:I

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e:Z

    .line 7
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f:Z

    .line 8
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g:Z

    .line 9
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h:Z

    .line 10
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->i:Z

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    const/4 v2, -0x1

    .line 12
    iput v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->k:I

    .line 13
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->n:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    .line 17
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Z

    .line 18
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Z

    .line 19
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Z

    .line 20
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/a;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/a;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    .line 21
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/j;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/j;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    .line 22
    new-instance v0, Lmaster/flame/danmaku/controller/b;

    invoke-direct {v0}, Lmaster/flame/danmaku/controller/b;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    .line 23
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/d;->a()Lmaster/flame/danmaku/danmaku/model/android/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    .line 24
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/c;->n:Lmaster/flame/danmaku/danmaku/model/android/c;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    .line 25
    iput-byte v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->D:B

    return-void
.end method

.method private J(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private N(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->O(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private O(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v0, p1, p3}, Lmaster/flame/danmaku/controller/b;->e(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/b$e;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Lmaster/flame/danmaku/controller/b$e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static e()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;-><init>()V

    return-object v0
.end method

.method private varargs t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;->a(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Lmaster/flame/danmaku/danmaku/model/m$a;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->C:Lmaster/flame/danmaku/danmaku/model/m$a;

    return-void
.end method

.method public B(Lmaster/flame/danmaku/danmaku/model/android/b;Lmaster/flame/danmaku/danmaku/model/android/b$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/b;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/b;->h(Lmaster/flame/danmaku/danmaku/model/android/b$a;)V

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u:Lmaster/flame/danmaku/danmaku/model/android/b;

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/b;->y(Lmaster/flame/danmaku/danmaku/model/android/b;)V

    :cond_0
    return-object p0
.end method

.method public C(Lmaster/flame/danmaku/danmaku/model/android/c;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    return-object p0
.end method

.method public varargs D([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "1013_Filter"

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->n:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->n:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    .line 6
    :goto_1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 7
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->COLOR_VALUE_WHITE_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->n:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public E(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/b;->A(Z)V

    .line 2
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_BOLD:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public F(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->d:I

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/n;->k(I)V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    .line 6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_MARGIN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public varargs G(I[F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/n;->c(I[F)V

    .line 2
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DANMAKU_STYLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public H(Lmaster/flame/danmaku/danmaku/model/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->m:Lmaster/flame/danmaku/danmaku/model/a;

    return-object p0
.end method

.method public I(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    sget v0, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 2
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    if-eq v0, v1, :cond_0

    .line 3
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->b:I

    .line 4
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/danmaku/model/b;->C(I)V

    .line 5
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TRANSPARENCY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public K(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Z

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 4
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->DUPLICATE_MERGING_ENABLED:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public L(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->J(ZI)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    const-string v1, "1010_Filter"

    invoke-direct {p0, v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 4
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f:Z

    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f:Z

    .line 6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->FB_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public M(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->J(ZI)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    const-string v1, "1010_Filter"

    invoke-direct {p0, v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 4
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e:Z

    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e:Z

    .line 6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->FT_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public P(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->J(ZI)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    const-string v1, "1010_Filter"

    invoke-direct {p0, v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 4
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g:Z

    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g:Z

    .line 6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->L2R_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public Q(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/n;->m(I)V

    return-object p0
.end method

.method public R(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:Z

    const-string v2, "1018_Filter"

    if-nez p1, :cond_1

    .line 2
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v3, v2, v1}, Lmaster/flame/danmaku/controller/b;->m(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0, v2, p1, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->O(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 4
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 5
    sget-object v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUN_LINES:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public S(I)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5

    .line 1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->k:I

    const-string v0, "1012_Filter"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "1011_Filter"

    if-nez p1, :cond_0

    .line 2
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v4, v3}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 5
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v4, v3}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v3, v0}, Lmaster/flame/danmaku/controller/b;->f(Ljava/lang/String;)Lmaster/flame/danmaku/controller/b$e;

    .line 7
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0

    .line 8
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 10
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->MAXIMUM_NUMS_IN_SCREEN:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public T(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->u(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p1

    return-object p1
.end method

.method public U(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->J(ZI)V

    .line 2
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    const-string v2, "1010_Filter"

    invoke-direct {p0, v2, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 4
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h:Z

    if-eq v1, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h:Z

    .line 6
    sget-object v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->R2L_DANMAKU_VISIBILIY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-direct {p0, v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public V(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->c:F

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/b;->u()V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/b;->B(F)V

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->e()V

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    .line 7
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCALE_TEXTSIZE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public W(F)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->l:F

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->l(F)V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->e()V

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    .line 6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SCROLL_SPEED_FACTOR:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public X(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->J(ZI)V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->j:Ljava/util/List;

    const-string v1, "1010_Filter"

    invoke-direct {p0, v1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 4
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->i:Z

    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->i:Z

    .line 6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->SPECIAL_DANMAKU_VISIBILITY:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public Y(Landroid/graphics/Typeface;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->a:Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/b;->u()V

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/b;->D(Ljava/lang/Object;)V

    .line 5
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->TYPEFACE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public varargs Z([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "1015_Filter"

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    .line 6
    :goto_1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 7
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    const-string v0, "1015_Filter"

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 5
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public varargs a0([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "1014_Filter"

    if-eqz p1, :cond_1

    .line 2
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    .line 6
    :goto_1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 7
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs b([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    const-string v0, "1014_Filter"

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 5
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Z

    .line 3
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->ALIGN_BOTTOM:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->h()V

    :cond_0
    return-object p0
.end method

.method public c0(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Z

    const-string v0, "1016_Filter"

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v1, v0}, Lmaster/flame/danmaku/controller/b;->l(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 6
    sget-object v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->BLOCK_GUEST_DANMAKU:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public d0(Lmaster/flame/danmaku/controller/b$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/b;->n(Lmaster/flame/danmaku/controller/b$a;)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    return-object p0
.end method

.method public f()Lmaster/flame/danmaku/danmaku/model/m$a;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->C:Lmaster/flame/danmaku/danmaku/model/m$a;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->n:Ljava/util/List;

    return-object v0
.end method

.method public h()Lmaster/flame/danmaku/danmaku/model/b;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->f:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->e:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->g:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->h:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->i:Z

    return v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->s:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->v:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Z

    return v0
.end method

.method public u(Ljava/util/Map;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->w:Z

    const-string v2, "1019_Filter"

    if-nez p1, :cond_1

    .line 2
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v3, v2, v1}, Lmaster/flame/danmaku/controller/b;->m(Ljava/lang/String;Z)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0, v2, p1, v1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->O(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 4
    :goto_1
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 5
    sget-object v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->OVERLAPPING_ENABLE:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v2, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public v(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    .line 3
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->q:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Lmaster/flame/danmaku/controller/b$a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/controller/b;->h(Lmaster/flame/danmaku/controller/b$a;)V

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    return-object p0
.end method

.method public varargs x([Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    const-string v0, "1015_Filter"

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 6
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_HASH_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public varargs y([Ljava/lang/Integer;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3
    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    const-string v0, "1014_Filter"

    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->N(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/j;->c()V

    .line 6
    sget-object p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;->USER_ID_BLACK_LIST:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->o:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext$DanmakuConfigTag;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public z()Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 1

    .line 1
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/a;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/a;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->x:Lmaster/flame/danmaku/danmaku/model/b;

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/j;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/j;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/b;->a()V

    .line 4
    invoke-static {}, Lmaster/flame/danmaku/danmaku/model/android/d;->a()Lmaster/flame/danmaku/danmaku/model/android/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    return-object p0
.end method
