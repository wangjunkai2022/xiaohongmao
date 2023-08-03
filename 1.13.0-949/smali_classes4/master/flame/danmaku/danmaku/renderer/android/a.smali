.class public Lmaster/flame/danmaku/danmaku/renderer/android/a;
.super Lf8/b;
.source "DanmakuRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/renderer/android/a$b;
    }
.end annotation


# instance fields
.field private d:Lmaster/flame/danmaku/danmaku/model/f;

.field private final e:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private f:Lmaster/flame/danmaku/danmaku/renderer/android/b$g;

.field private final g:Lmaster/flame/danmaku/danmaku/renderer/android/b$g;

.field private final h:Lmaster/flame/danmaku/danmaku/renderer/android/b;

.field private i:Lmaster/flame/danmaku/danmaku/model/k;

.field private j:Lf8/a$b;

.field private k:Lmaster/flame/danmaku/danmaku/renderer/android/a$b;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf8/b;-><init>()V

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/a$a;

    invoke-direct {v0, p0}, Lmaster/flame/danmaku/danmaku/renderer/android/a$a;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/a;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->g:Lmaster/flame/danmaku/danmaku/renderer/android/b$g;

    .line 3
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/a;Lmaster/flame/danmaku/danmaku/renderer/android/a$a;)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->k:Lmaster/flame/danmaku/danmaku/renderer/android/a$b;

    .line 4
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->e:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 5
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/b;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->p()Z

    move-result p1

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/b;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h:Lmaster/flame/danmaku/danmaku/renderer/android/b;

    return-void
.end method

.method static synthetic h(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->e:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method static synthetic i(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/k;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->i:Lmaster/flame/danmaku/danmaku/model/k;

    return-object p0
.end method

.method static synthetic j(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/renderer/android/b$g;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->f:Lmaster/flame/danmaku/danmaku/renderer/android/b$g;

    return-object p0
.end method

.method static synthetic k(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/renderer/android/b;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h:Lmaster/flame/danmaku/danmaku/renderer/android/b;

    return-object p0
.end method

.method static synthetic l(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lf8/a$b;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->j:Lf8/a$b;

    return-object p0
.end method

.method static synthetic m(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/f;
    .locals 0

    iget-object p0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->d:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/m;JLf8/a$c;)V
    .locals 1

    .line 1
    iget-object v0, p5, Lf8/a$c;->b:Lmaster/flame/danmaku/danmaku/model/f;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->d:Lmaster/flame/danmaku/danmaku/model/f;

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->k:Lmaster/flame/danmaku/danmaku/renderer/android/a$b;

    iput-object p1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->f:Lmaster/flame/danmaku/danmaku/model/n;

    .line 3
    iput-object p5, v0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    .line 4
    iput-wide p3, v0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->h:J

    .line 5
    invoke-interface {p2, v0}, Lmaster/flame/danmaku/danmaku/model/m;->a(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h:Lmaster/flame/danmaku/danmaku/renderer/android/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public c(Lmaster/flame/danmaku/danmaku/model/k;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->i:Lmaster/flame/danmaku/danmaku/model/k;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->e()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->e:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/b;->a()V

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->g:Lmaster/flame/danmaku/danmaku/renderer/android/b$g;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->f:Lmaster/flame/danmaku/danmaku/renderer/android/b$g;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h:Lmaster/flame/danmaku/danmaku/renderer/android/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/b;->b()V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->j:Lf8/a$b;

    return-void
.end method

.method public g(Lf8/a$b;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->j:Lf8/a$b;

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h:Lmaster/flame/danmaku/danmaku/renderer/android/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/b;->d()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a;->e:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    invoke-virtual {v0}, Lmaster/flame/danmaku/controller/b;->a()V

    return-void
.end method
