.class Lmaster/flame/danmaku/danmaku/renderer/android/a$b;
.super Lmaster/flame/danmaku/danmaku/model/m$c;
.source "DanmakuRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/renderer/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/danmaku/model/m$c<",
        "Lmaster/flame/danmaku/danmaku/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lmaster/flame/danmaku/danmaku/model/d;

.field public f:Lmaster/flame/danmaku/danmaku/model/n;

.field public g:Lf8/a$c;

.field public h:J

.field final synthetic i:Lmaster/flame/danmaku/danmaku/renderer/android/a;


# direct methods
.method private constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/m$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmaster/flame/danmaku/danmaku/renderer/android/a;Lmaster/flame/danmaku/danmaku/renderer/android/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;-><init>(Lmaster/flame/danmaku/danmaku/renderer/android/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->e(Lmaster/flame/danmaku/danmaku/model/d;)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->e:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v1, v0, Lf8/a$c;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 2
    invoke-super {p0}, Lmaster/flame/danmaku/danmaku/model/m$b;->b()V

    return-void
.end method

.method public e(Lmaster/flame/danmaku/danmaku/model/d;)I
    .locals 10

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->e:Lmaster/flame/danmaku/danmaku/model/d;

    .line 2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->y()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->f:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/n;->n(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    iget-boolean p1, p1, Lf8/a$c;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    iget-boolean v0, v0, Lf8/a$c;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->o()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v3, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->z:Lmaster/flame/danmaku/controller/b;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    iget v5, v0, Lf8/a$c;->c:I

    iget v6, v0, Lf8/a$c;->d:I

    iget-object v7, v0, Lf8/a$c;->b:Lmaster/flame/danmaku/danmaku/model/f;

    const/4 v8, 0x0

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lmaster/flame/danmaku/controller/b;->b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V

    .line 8
    :cond_3
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->h:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_e

    iget-byte v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->o:B

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->r()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->e()Lmaster/flame/danmaku/danmaku/model/o;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->i(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/model/o;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 13
    :cond_5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->i(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/k;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_6
    return v3

    .line 14
    :cond_7
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 15
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    iget v4, v0, Lf8/a$c;->c:I

    add-int/2addr v4, v3

    iput v4, v0, Lf8/a$c;->c:I

    .line 16
    :cond_8
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->s()Z

    move-result v0

    if-nez v0, :cond_9

    .line 17
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->f:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-virtual {p1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/d;->B(Lmaster/flame/danmaku/danmaku/model/n;Z)V

    .line 18
    :cond_9
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->w()Z

    move-result v0

    if-nez v0, :cond_a

    .line 19
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->f:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-virtual {p1, v0, v2}, Lmaster/flame/danmaku/danmaku/model/d;->C(Lmaster/flame/danmaku/danmaku/model/n;Z)V

    .line 20
    :cond_a
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->k(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/renderer/android/b;

    move-result-object v0

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->f:Lmaster/flame/danmaku/danmaku/model/n;

    iget-object v5, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v5}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->j(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/renderer/android/b$g;

    move-result-object v5

    invoke-virtual {v0, p1, v4, v5}, Lmaster/flame/danmaku/danmaku/renderer/android/b;->c(Lmaster/flame/danmaku/danmaku/model/d;Lmaster/flame/danmaku/danmaku/model/n;Lmaster/flame/danmaku/danmaku/renderer/android/b$g;)V

    .line 21
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->x()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 22
    iget-object v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->d:[Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->d()F

    move-result v0

    iget-object v4, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->f:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-interface {v4}, Lmaster/flame/danmaku/danmaku/model/n;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_b

    return v2

    .line 23
    :cond_b
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->f:Lmaster/flame/danmaku/danmaku/model/n;

    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/n;)I

    move-result v0

    const-wide/16 v4, 0x1

    if-ne v0, v3, :cond_c

    .line 24
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    iget-wide v6, v0, Lf8/a$c;->r:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lf8/a$c;->r:J

    goto :goto_1

    :cond_c
    if-ne v0, v1, :cond_d

    .line 25
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    iget-wide v6, v0, Lf8/a$c;->s:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lf8/a$c;->s:J

    .line 26
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->i(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 27
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->i(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lmaster/flame/danmaku/danmaku/model/k;->b(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 28
    :cond_d
    :goto_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->n()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lf8/a$c;->a(II)I

    .line 29
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    invoke-virtual {v0, v3}, Lf8/a$c;->b(I)I

    .line 30
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->g:Lf8/a$c;

    invoke-virtual {v0, p1}, Lf8/a$c;->c(Lmaster/flame/danmaku/danmaku/model/d;)V

    .line 31
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->l(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lf8/a$b;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->K:I

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    .line 32
    invoke-static {v1}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/j;->d:I

    if-eq v0, v1, :cond_e

    .line 33
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->h(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v0

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iget v0, v0, Lmaster/flame/danmaku/danmaku/model/j;->d:I

    iput v0, p1, Lmaster/flame/danmaku/danmaku/model/d;->K:I

    .line 34
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/renderer/android/a$b;->i:Lmaster/flame/danmaku/danmaku/renderer/android/a;

    invoke-static {v0}, Lmaster/flame/danmaku/danmaku/renderer/android/a;->l(Lmaster/flame/danmaku/danmaku/renderer/android/a;)Lf8/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lf8/a$b;->a(Lmaster/flame/danmaku/danmaku/model/d;)V

    :cond_e
    :goto_2
    return v2
.end method
