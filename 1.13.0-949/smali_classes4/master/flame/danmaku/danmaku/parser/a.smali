.class public abstract Lmaster/flame/danmaku/danmaku/parser/a;
.super Ljava/lang/Object;
.source "BaseDanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/parser/a$a;
    }
.end annotation


# instance fields
.field protected a:Lmaster/flame/danmaku/danmaku/parser/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/parser/b<",
            "*>;"
        }
    .end annotation
.end field

.field protected b:Lmaster/flame/danmaku/danmaku/model/f;

.field protected c:I

.field protected d:I

.field protected e:F

.field protected f:F

.field private g:Lmaster/flame/danmaku/danmaku/model/m;

.field protected h:Lmaster/flame/danmaku/danmaku/model/n;

.field protected i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field protected j:Lmaster/flame/danmaku/danmaku/parser/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lmaster/flame/danmaku/danmaku/model/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->g:Lmaster/flame/danmaku/danmaku/model/m;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->k()V

    .line 3
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/a;->f()Lmaster/flame/danmaku/danmaku/model/m;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->g:Lmaster/flame/danmaku/danmaku/model/m;

    .line 4
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/a;->h()V

    .line 5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/d;->m()V

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->g:Lmaster/flame/danmaku/danmaku/model/m;

    return-object v0
.end method

.method public b()Lmaster/flame/danmaku/danmaku/model/n;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->h:Lmaster/flame/danmaku/danmaku/model/n;

    return-object v0
.end method

.method public c()Lmaster/flame/danmaku/danmaku/model/f;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->b:Lmaster/flame/danmaku/danmaku/model/f;

    return-object v0
.end method

.method protected d()F
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->e:F

    const v1, 0x3f19999a    # 0.6f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public e(Lmaster/flame/danmaku/danmaku/parser/b;)Lmaster/flame/danmaku/danmaku/parser/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/parser/b<",
            "*>;)",
            "Lmaster/flame/danmaku/danmaku/parser/a;"
        }
    .end annotation

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->a:Lmaster/flame/danmaku/danmaku/parser/b;

    return-object p0
.end method

.method protected abstract f()Lmaster/flame/danmaku/danmaku/model/m;
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/a;->h()V

    return-void
.end method

.method protected h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->a:Lmaster/flame/danmaku/danmaku/parser/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/parser/b;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->a:Lmaster/flame/danmaku/danmaku/parser/b;

    return-void
.end method

.method public i(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/parser/a;
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    return-object p0
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/n;)Lmaster/flame/danmaku/danmaku/parser/a;
    .locals 3

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->h:Lmaster/flame/danmaku/danmaku/model/n;

    .line 2
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->c:I

    .line 3
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->d:I

    .line 4
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->i()F

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->e:F

    .line 5
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->f()F

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->f:F

    .line 6
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget v0, p0, Lmaster/flame/danmaku/danmaku/parser/a;->c:I

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->d:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/a;->d()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lmaster/flame/danmaku/danmaku/model/android/d;->q(FFF)Z

    .line 7
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->i:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->A:Lmaster/flame/danmaku/danmaku/model/android/d;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/d;->m()V

    return-object p0
.end method

.method public k(Lmaster/flame/danmaku/danmaku/parser/a$a;)Lmaster/flame/danmaku/danmaku/parser/a;
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->j:Lmaster/flame/danmaku/danmaku/parser/a$a;

    return-object p0
.end method

.method public l(Lmaster/flame/danmaku/danmaku/model/f;)Lmaster/flame/danmaku/danmaku/parser/a;
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/a;->b:Lmaster/flame/danmaku/danmaku/model/f;

    return-object p0
.end method
