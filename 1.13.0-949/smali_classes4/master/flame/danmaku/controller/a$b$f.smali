.class public Lmaster/flame/danmaku/controller/a$b$f;
.super Landroid/os/Handler;
.source "CacheManagingDrawTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# static fields
.field private static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x7

.field public static final m:I = 0x8

.field public static final n:I = 0x9

.field public static final o:I = 0x10

.field public static final p:I = 0x11

.field public static final q:I = 0x12


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lmaster/flame/danmaku/controller/a$b;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/controller/a$b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lmaster/flame/danmaku/controller/a$b$f;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/a$b$f;->a:Z

    return p0
.end method

.method static synthetic b(Lmaster/flame/danmaku/controller/a$b$f;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/a$b$f;->d:Z

    return p0
.end method

.method static synthetic c(Lmaster/flame/danmaku/controller/a$b$f;)Z
    .locals 0

    iget-boolean p0, p0, Lmaster/flame/danmaku/controller/a$b$f;->b:Z

    return p0
.end method

.method static synthetic d(Lmaster/flame/danmaku/controller/a$b$f;Lmaster/flame/danmaku/danmaku/model/d;Z)B
    .locals 0

    invoke-direct {p0, p1, p2}, Lmaster/flame/danmaku/controller/a$b$f;->g(Lmaster/flame/danmaku/danmaku/model/d;Z)B

    move-result p0

    return p0
.end method

.method private final e(Lmaster/flame/danmaku/danmaku/model/d;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v2

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-boolean v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->o:B

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Lmaster/flame/danmaku/danmaku/model/o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/a$b$f;->g(Lmaster/flame/danmaku/danmaku/model/d;Z)B

    :cond_3
    :goto_0
    return-void
.end method

.method private g(Lmaster/flame/danmaku/danmaku/model/d;Z)B
    .locals 6

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->B(Lmaster/flame/danmaku/danmaku/model/n;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v3, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v3, v3, Lmaster/flame/danmaku/danmaku/model/android/c;->f:I

    invoke-static {v2, p1, v1, v3}, Lmaster/flame/danmaku/controller/a$b;->c(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    check-cast v2, Lmaster/flame/danmaku/danmaku/model/android/f;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {v2}, Lmaster/flame/danmaku/danmaku/model/android/f;->k()V

    .line 6
    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    .line 7
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->C(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/controller/a$b;

    move-result-object v0

    invoke-static {v0, p1, v3, p2}, Lmaster/flame/danmaku/controller/a$b;->i(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    return v3

    .line 8
    :cond_2
    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v5, v4, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/c;->g:I

    invoke-static {v4, p1, v3, v5}, Lmaster/flame/danmaku/controller/a$b;->c(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;ZI)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 9
    iget-object v5, v4, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    check-cast v5, Lmaster/flame/danmaku/danmaku/model/android/f;

    move-object v2, v5

    :cond_3
    if-eqz v2, :cond_4

    .line 10
    iput-object v0, v4, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    .line 11
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v4, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/c;->a:I

    invoke-static {p1, v4, v2, v0}, Lg8/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    :try_start_2
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    .line 13
    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/a;->C(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/controller/a$b;

    move-result-object v2

    invoke-static {v2, p1, v3, p2}, Lmaster/flame/danmaku/controller/a$b;->i(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v3

    .line 14
    :cond_4
    :try_start_3
    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    float-to-int v0, v0

    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    float-to-int v4, v4

    iget-object v5, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v5, v5, Lmaster/flame/danmaku/danmaku/model/android/c;->a:I

    div-int/lit8 v5, v5, 0x8

    invoke-static {v0, v4, v5}, Lg8/a;->f(III)I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    .line 15
    iget-object v5, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v5, v5, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/a;->B(Lmaster/flame/danmaku/controller/a;)I

    move-result v5

    if-le v4, v5, :cond_5

    return v1

    :cond_5
    if-nez p2, :cond_6

    .line 16
    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v4}, Lmaster/flame/danmaku/controller/a$b;->d(Lmaster/flame/danmaku/controller/a$b;)I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v5}, Lmaster/flame/danmaku/controller/a$b;->e(Lmaster/flame/danmaku/controller/a$b;)I

    move-result v5

    if-le v4, v5, :cond_6

    .line 17
    iget-object p2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p2, p2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {p2}, Lmaster/flame/danmaku/controller/a;->C(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/controller/a$b;

    move-result-object p2

    invoke-static {p2, v0, v3}, Lmaster/flame/danmaku/controller/a$b;->f(Lmaster/flame/danmaku/controller/a$b;IZ)V

    return v1

    .line 18
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/android/f;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 19
    :try_start_4
    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v3, v2, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v2, v2, Lmaster/flame/danmaku/danmaku/model/android/c;->a:I

    invoke-static {p1, v3, v0, v2}, Lg8/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0

    .line 20
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    .line 21
    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/a;->C(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/controller/a$b;

    move-result-object v2

    iget-object v3, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-virtual {v3, p1}, Lmaster/flame/danmaku/controller/a$b;->K(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result v3

    invoke-static {v2, p1, v3, p2}, Lmaster/flame/danmaku/controller/a$b;->i(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    move-result p2

    if-nez p2, :cond_7

    .line 22
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/a$b$f;->o(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_7
    xor-int/lit8 p1, p2, 0x1

    return p1

    :catch_0
    move-object v0, v2

    goto :goto_1

    :catch_1
    move-object v0, v2

    goto :goto_2

    .line 23
    :catch_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/a$b$f;->o(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return v1

    .line 24
    :catch_3
    :goto_2
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/controller/a$b$f;->o(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V

    return v1
.end method

.method private i()J
    .locals 13

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v3, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v4, v3, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v3, v3, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v6, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v6, v6, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    sub-long/2addr v4, v6

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v4

    if-gtz v9, :cond_1

    .line 2
    iget-object v0, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/c;->c:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v2}, Lmaster/flame/danmaku/controller/a$b;->h(Lmaster/flame/danmaku/controller/a$b;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 5
    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide v7

    .line 6
    :cond_1
    invoke-virtual {v2}, Lmaster/flame/danmaku/controller/a$b;->y()F

    move-result v0

    .line 7
    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/a$b;->b:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/android/e;->first()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v2

    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v4, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_2
    move-wide v2, v7

    .line 9
    :goto_0
    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v5, v4, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v5, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v9, v5, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    const-wide/16 v11, 0x2

    mul-long v11, v11, v9

    const v5, 0x3f19999a    # 0.6f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_3

    cmp-long v5, v2, v9

    if-lez v5, :cond_3

    .line 10
    invoke-static {v4}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 11
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide v7

    :cond_3
    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    neg-long v9, v11

    cmp-long v5, v2, v9

    if-gez v5, :cond_4

    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide v7

    :cond_4
    const v2, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5

    return-wide v7

    .line 15
    :cond_5
    invoke-static {v4}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v2, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v4, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v2, v4

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {v1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v4, v1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    neg-long v4, v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    .line 17
    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    const/16 v0, 0x8

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 19
    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide v7

    :cond_6
    cmp-long v0, v2, v11

    if-lez v0, :cond_7

    return-wide v7

    .line 20
    :cond_7
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide v7
.end method

.method private m()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 2
    iget-object v3, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v3, v3, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    const-wide/16 v5, 0x2

    mul-long v5, v5, v3

    add-long/2addr v5, v1

    .line 3
    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2, v5, v6}, Lmaster/flame/danmaku/danmaku/model/m;->d(JJ)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/m;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lmaster/flame/danmaku/controller/a$b$f$a;

    invoke-direct {v1, p0}, Lmaster/flame/danmaku/controller/a$b$f$a;-><init>(Lmaster/flame/danmaku/controller/a$b$f;)V

    invoke-interface {v0, v1}, Lmaster/flame/danmaku/danmaku/model/m;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private n(Z)J
    .locals 19

    move-object/from16 v11, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lmaster/flame/danmaku/controller/a$b$f;->m()V

    .line 2
    iget-object v0, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    const-wide/16 v2, 0x1e

    sub-long v5, v0, v2

    .line 3
    iget-object v0, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v7, v1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a$b;->a(Lmaster/flame/danmaku/controller/a$b;)I

    move-result v0

    int-to-long v0, v0

    mul-long v7, v7, v0

    add-long v12, v5, v7

    .line 4
    iget-object v0, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    const-wide/16 v7, 0x0

    cmp-long v4, v12, v0

    if-gez v4, :cond_0

    return-wide v7

    .line 5
    :cond_0
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v9, 0xa

    const/16 v16, 0x1

    .line 6
    :try_start_0
    iget-object v2, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/e;->e:Lmaster/flame/danmaku/danmaku/model/m;

    invoke-interface {v2, v5, v6, v12, v13}, Lmaster/flame/danmaku/danmaku/model/m;->d(JJ)Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v18, v4

    move-object v4, v0

    move/from16 v0, v18

    goto :goto_1

    .line 7
    :catch_0
    invoke-static {v9, v10}, Lg8/c;->a(J)V

    move-object v4, v0

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    if-nez v4, :cond_2

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x1e

    move-object/from16 v18, v4

    move v4, v0

    move-object/from16 v0, v18

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 8
    iget-object v0, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    return-wide v7

    .line 9
    :cond_3
    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/m;->first()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    .line 10
    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/m;->last()Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v2

    if-eqz v0, :cond_7

    if-nez v2, :cond_4

    goto :goto_5

    .line 11
    :cond_4
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    iget-object v3, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v9, v3, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v9, v9, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    sub-long/2addr v0, v9

    cmp-long v9, v0, v7

    if-gez v9, :cond_5

    const-wide/16 v0, 0x1e

    goto :goto_3

    :cond_5
    const-wide/16 v9, 0xa

    mul-long v0, v0, v9

    .line 12
    iget-object v3, v3, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v9, v3, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    div-long/2addr v0, v9

    const-wide/16 v9, 0x1e

    add-long/2addr v0, v9

    :goto_3
    const-wide/16 v9, 0x64

    .line 13
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 14
    :goto_4
    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/m;->size()I

    move-result v9

    .line 15
    new-instance v10, Lmaster/flame/danmaku/controller/a$b$f$b;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-wide/from16 v16, v12

    move-object v12, v4

    move v4, v9

    move-object v13, v10

    move-wide v9, v14

    invoke-direct/range {v0 .. v10}, Lmaster/flame/danmaku/controller/a$b$f$b;-><init>(Lmaster/flame/danmaku/controller/a$b$f;Lmaster/flame/danmaku/danmaku/model/d;ZIJJJ)V

    invoke-interface {v12, v13}, Lmaster/flame/danmaku/danmaku/model/m;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 16
    invoke-static {}, Lg8/c;->b()J

    move-result-wide v0

    sub-long/2addr v0, v14

    .line 17
    iget-object v2, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v2}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v2

    move-wide/from16 v5, v16

    invoke-virtual {v2, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    return-wide v0

    :cond_7
    :goto_5
    move-wide v5, v12

    .line 18
    iget-object v0, v11, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v0}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    return-wide v7
.end method

.method private o(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/android/f;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    check-cast p2, Lmaster/flame/danmaku/danmaku/model/android/f;

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lmaster/flame/danmaku/danmaku/model/android/f;->destroy()V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {p1, p2}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public h(Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/d;->B(Lmaster/flame/danmaku/danmaku/model/n;Z)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v3, v3, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->acquire()Lmaster/flame/danmaku/danmaku/model/objectpool/c;

    move-result-object v3

    check-cast v3, Lmaster/flame/danmaku/danmaku/model/android/f;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    iget-object v4, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v5, v4, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v4, v4, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v4, v4, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v4, v4, Lmaster/flame/danmaku/danmaku/model/android/c;->a:I

    invoke-static {p1, v5, v3, v4}, Lg8/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v3

    .line 5
    iput-object v3, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :catch_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 6
    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {v1, v3}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    .line 7
    :cond_1
    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    return v0

    :catch_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 8
    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    invoke-interface {v1, v3}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    .line 9
    :cond_2
    iput-object v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 2
    :pswitch_0
    iput-boolean v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->d:Z

    goto/16 :goto_5

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz p1, :cond_c

    .line 4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Lmaster/flame/danmaku/danmaku/model/o;

    move-result-object v0

    .line 5
    iget v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->J:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->f()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->d:Lmaster/flame/danmaku/danmaku/model/b;

    iget-object v4, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    check-cast v4, Lmaster/flame/danmaku/danmaku/model/android/f;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->B:Lmaster/flame/danmaku/danmaku/model/android/c;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/android/c;->a:I

    invoke-static {p1, v1, v4, v0}, Lg8/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/android/f;I)Lmaster/flame/danmaku/danmaku/model/android/f;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->y:Lmaster/flame/danmaku/danmaku/model/o;

    .line 9
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v0, p1, v2, v3}, Lmaster/flame/danmaku/controller/a$b;->i(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;IZ)Z

    return-void

    .line 10
    :cond_1
    iget-boolean v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->z:Z

    if-eqz v2, :cond_2

    .line 11
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {v0, p1}, Lmaster/flame/danmaku/controller/a$b;->j(Lmaster/flame/danmaku/controller/a$b;Lmaster/flame/danmaku/danmaku/model/d;)J

    .line 12
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/a$b$f;->h(Lmaster/flame/danmaku/danmaku/model/d;)Z

    goto/16 :goto_5

    :cond_2
    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->destroy()V

    .line 15
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-virtual {v0, v3, p1, v1}, Lmaster/flame/danmaku/controller/a$b;->t(ZLmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 16
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/a$b$f;->e(Lmaster/flame/danmaku/danmaku/model/d;)V

    goto/16 :goto_5

    .line 17
    :pswitch_2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->h(Lmaster/flame/danmaku/controller/a$b;)V

    .line 18
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 19
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-virtual {p1}, Lmaster/flame/danmaku/controller/e;->h()V

    goto/16 :goto_5

    .line 20
    :pswitch_3
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->h(Lmaster/flame/danmaku/controller/a$b;)V

    .line 21
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    goto/16 :goto_5

    .line 22
    :pswitch_4
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->l(Lmaster/flame/danmaku/controller/a$b;)V

    .line 23
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v1, v0, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v1, v1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v4, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    sub-long/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 24
    iput-boolean v3, p0, Lmaster/flame/danmaku/controller/a$b$f;->c:Z

    goto/16 :goto_5

    .line 25
    :pswitch_5
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 26
    iput-boolean v3, p0, Lmaster/flame/danmaku/controller/a$b$f;->a:Z

    .line 27
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->l(Lmaster/flame/danmaku/controller/a$b;)V

    .line 28
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->m(Lmaster/flame/danmaku/controller/a$b;)V

    .line 29
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_5

    .line 30
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_c

    .line 31
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 32
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    iget-wide v4, p1, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 33
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 34
    iput-boolean v3, p0, Lmaster/flame/danmaku/controller/a$b$f;->c:Z

    .line 35
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-virtual {p1}, Lmaster/flame/danmaku/controller/a$b;->x()J

    move-result-wide v6

    cmp-long p1, v0, v4

    if-gtz p1, :cond_5

    sub-long/2addr v6, v0

    .line 36
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    cmp-long v2, v6, v0

    if-lez v2, :cond_4

    goto :goto_1

    .line 37
    :cond_4
    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->k(Lmaster/flame/danmaku/controller/a$b;)V

    goto :goto_2

    .line 38
    :cond_5
    :goto_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->h(Lmaster/flame/danmaku/controller/a$b;)V

    .line 39
    :goto_2
    invoke-direct {p0, v3}, Lmaster/flame/danmaku/controller/a$b$f;->n(Z)J

    .line 40
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/a$b$f;->r()V

    goto/16 :goto_5

    .line 41
    :pswitch_7
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->k(Lmaster/flame/danmaku/controller/a$b;)V

    goto/16 :goto_5

    :pswitch_8
    const/4 p1, 0x3

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, p1, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz v0, :cond_6

    iget-boolean p1, p1, Lmaster/flame/danmaku/controller/e;->n:Z

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->c:Z

    if-eqz p1, :cond_8

    :cond_7
    const/4 p1, 0x1

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    .line 44
    :goto_3
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/a$b$f;->n(Z)J

    if-eqz p1, :cond_9

    .line 45
    iput-boolean v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->c:Z

    .line 46
    :cond_9
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, p1, Lmaster/flame/danmaku/controller/e;->g:Lmaster/flame/danmaku/controller/h$a;

    if-eqz v0, :cond_c

    iget-boolean p1, p1, Lmaster/flame/danmaku/controller/e;->n:Z

    if-nez p1, :cond_c

    .line 47
    invoke-interface {v0}, Lmaster/flame/danmaku/controller/h$a;->c()V

    .line 48
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iput-boolean v3, p1, Lmaster/flame/danmaku/controller/e;->n:Z

    goto :goto_5

    .line 49
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    .line 50
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/controller/a$b$f;->e(Lmaster/flame/danmaku/danmaku/model/d;)V

    goto :goto_5

    .line 51
    :pswitch_a
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    invoke-static {p1}, Lmaster/flame/danmaku/controller/a$b;->h(Lmaster/flame/danmaku/controller/a$b;)V

    :goto_4
    const/16 p1, 0x12c

    if-ge v2, p1, :cond_a

    .line 52
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->d:Lmaster/flame/danmaku/danmaku/model/objectpool/b;

    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/f;

    invoke-direct {v0}, Lmaster/flame/danmaku/danmaku/model/android/f;-><init>()V

    invoke-interface {p1, v0}, Lmaster/flame/danmaku/danmaku/model/objectpool/b;->a(Lmaster/flame/danmaku/danmaku/model/objectpool/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 53
    :cond_a
    :pswitch_b
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/a$b$f;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_b

    .line 54
    iget-object p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object p1, p1, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, p1, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    :cond_b
    const/16 p1, 0x10

    .line 55
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->a:Z

    return v0
.end method

.method public k(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lmaster/flame/danmaku/controller/a$b$f;->b:Z

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->a:Z

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public p(J)V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->c:Z

    const/16 v1, 0x12

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    iget-object v1, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v1, v1, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    invoke-static {v1}, Lmaster/flame/danmaku/controller/a;->D(Lmaster/flame/danmaku/controller/a;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v1

    iget-object v2, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v2, v2, Lmaster/flame/danmaku/controller/e;->i:Lmaster/flame/danmaku/danmaku/model/f;

    iget-wide v2, v2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/f;->c(J)J

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->d:Z

    return-void
.end method

.method public r()V
    .locals 3

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->a:Z

    const/16 v0, 0x10

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/controller/a$b$f;->e:Lmaster/flame/danmaku/controller/a$b;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/a$b;->j:Lmaster/flame/danmaku/controller/a;

    iget-object v0, v0, Lmaster/flame/danmaku/controller/e;->c:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/android/d;->f:J

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
