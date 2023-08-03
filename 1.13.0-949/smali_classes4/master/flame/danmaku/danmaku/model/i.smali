.class public Lmaster/flame/danmaku/danmaku/model/i;
.super Lmaster/flame/danmaku/danmaku/model/d;
.source "FTDanmaku.java"


# instance fields
.field private X:F

.field protected Y:F

.field private Z:[F

.field private a0:F

.field private b0:F

.field private c0:I


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->X:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->Y:F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->Z:[F

    .line 5
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    return-void
.end method


# virtual methods
.method public A(Lmaster/flame/danmaku/danmaku/model/n;FF)V
    .locals 4

    .line 1
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz p2, :cond_2

    .line 2
    iget-wide v0, p2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 3
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v2, p2, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->x()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/i;->K(Lmaster/flame/danmaku/danmaku/model/n;)F

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/i;->X:F

    .line 6
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/i;->Y:F

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/d;->J(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Lmaster/flame/danmaku/danmaku/model/d;->J(Z)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/i;->Y:F

    .line 10
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/i;->X:F

    :cond_2
    return-void
.end method

.method protected K(Lmaster/flame/danmaku/danmaku/model/n;)F
    .locals 2

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->c0:I

    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->b0:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget p1, p0, Lmaster/flame/danmaku/danmaku/model/i;->a0:F

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 4
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/i;->c0:I

    .line 5
    iget p1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/i;->b0:F

    .line 6
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->a0:F

    return v0
.end method

.method public d()F
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->Y:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr v0, v1

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->X:F

    return v0
.end method

.method public h(Lmaster/flame/danmaku/danmaku/model/n;J)[F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->s()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/i;->K(Lmaster/flame/danmaku/danmaku/model/n;)F

    move-result p1

    .line 3
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/i;->Z:[F

    if-nez p2, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 4
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/i;->Z:[F

    .line 5
    :cond_1
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/i;->Z:[F

    const/4 p3, 0x0

    aput p1, p2, p3

    const/4 p3, 0x1

    .line 6
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->Y:F

    aput v0, p2, p3

    const/4 p3, 0x2

    .line 7
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr p1, v1

    aput p1, p2, p3

    const/4 p1, 0x3

    .line 8
    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr v0, p3

    aput v0, p2, p1

    return-object p2
.end method

.method public i()F
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->X:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr v0, v1

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/i;->Y:F

    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
