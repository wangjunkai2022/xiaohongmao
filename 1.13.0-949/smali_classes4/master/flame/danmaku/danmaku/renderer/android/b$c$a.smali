.class public Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;
.super Lmaster/flame/danmaku/danmaku/model/m$b;
.source "DanmakusRetainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$b<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        "Lmaster/flame/danmaku/danmaku/renderer/android/b$f;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lmaster/flame/danmaku/danmaku/model/n;

.field f:I

.field public g:Lmaster/flame/danmaku/danmaku/model/d;

.field public h:Lmaster/flame/danmaku/danmaku/model/d;

.field public i:Lmaster/flame/danmaku/danmaku/model/d;

.field public j:Lmaster/flame/danmaku/danmaku/model/d;

.field public k:Lmaster/flame/danmaku/danmaku/model/d;

.field l:Z

.field m:Z

.field n:Z

.field final synthetic o:Lmaster/flame/danmaku/danmaku/renderer/android/b$c;


# direct methods
.method protected constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->o:Lmaster/flame/danmaku/danmaku/renderer/android/b$c;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$b;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->f:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->j:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->k:Lmaster/flame/danmaku/danmaku/model/d;

    .line 4
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->l:Z

    .line 5
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->m:Z

    .line 6
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->n:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->f:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->j:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 3
    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->n:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->m:Z

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->l:Z

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->f()Lmaster/flame/danmaku/danmaku/renderer/android/b$f;

    move-result-object v0

    return-object v0
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->o:Lmaster/flame/danmaku/danmaku/renderer/android/b$c;

    iget-boolean v0, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->f:I

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->k:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 4
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    .line 6
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->m:Z

    .line 7
    iput-boolean v2, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->n:Z

    return v1

    .line 8
    :cond_1
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v3, :cond_2

    .line 9
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    .line 10
    :cond_2
    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->m()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v3}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 11
    iput-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->l:Z

    return v1

    .line 12
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->j:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_4

    .line 13
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->j:Lmaster/flame/danmaku/danmaku/model/d;

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->i()F

    move-result v0

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->i()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 15
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->j:Lmaster/flame/danmaku/danmaku/model/d;

    .line 16
    :cond_5
    :goto_0
    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->e:Lmaster/flame/danmaku/danmaku/model/n;

    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->k:Lmaster/flame/danmaku/danmaku/model/d;

    .line 17
    invoke-virtual {v5}, Lmaster/flame/danmaku/danmaku/model/d;->f()J

    move-result-wide v6

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->k:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->l()Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object v0

    iget-wide v8, v0, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    move-object v4, p1

    .line 18
    invoke-static/range {v3 .. v9}, Lg8/a;->i(Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/d;JJ)Z

    move-result v0

    iput-boolean v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->n:Z

    if-nez v0, :cond_6

    .line 19
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    return v1

    .line 20
    :cond_6
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    return v2
.end method

.method public f()Lmaster/flame/danmaku/danmaku/renderer/android/b$f;
    .locals 2

    .line 1
    new-instance v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/b$a;)V

    .line 2
    iget v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->f:I

    iput v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->a:I

    .line 3
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->c:Lmaster/flame/danmaku/danmaku/model/d;

    .line 4
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->b:Lmaster/flame/danmaku/danmaku/model/d;

    .line 5
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->i:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->d:Lmaster/flame/danmaku/danmaku/model/d;

    .line 6
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->j:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 7
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->l:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->g:Z

    .line 8
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->m:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->h:Z

    .line 9
    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/b$c$a;->n:Z

    iput-boolean v1, v0, Lmaster/flame/danmaku/danmaku/renderer/android/b$f;->i:Z

    return-object v0
.end method
