.class public Lmaster/flame/danmaku/danmaku/model/r$a;
.super Ljava/lang/Object;
.source "SpecialDanmaku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/danmaku/model/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lmaster/flame/danmaku/danmaku/model/r$b;

.field b:Lmaster/flame/danmaku/danmaku/model/r$b;

.field public c:J

.field public d:J

.field public e:J

.field f:F

.field g:F

.field final synthetic h:Lmaster/flame/danmaku/danmaku/model/r;


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/r;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->h:Lmaster/flame/danmaku/danmaku/model/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->a:Lmaster/flame/danmaku/danmaku/model/r$b;

    iget v2, v1, Lmaster/flame/danmaku/danmaku/model/r$b;->a:F

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/r$b;->b:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public b()F
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->b:Lmaster/flame/danmaku/danmaku/model/r$b;

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->a:Lmaster/flame/danmaku/danmaku/model/r$b;

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/danmaku/model/r$b;->a(Lmaster/flame/danmaku/danmaku/model/r$b;)F

    move-result v0

    return v0
.end method

.method public c()[F
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->b:Lmaster/flame/danmaku/danmaku/model/r$b;

    iget v2, v1, Lmaster/flame/danmaku/danmaku/model/r$b;->a:F

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v1, v1, Lmaster/flame/danmaku/danmaku/model/r$b;->b:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public d(Lmaster/flame/danmaku/danmaku/model/r$b;Lmaster/flame/danmaku/danmaku/model/r$b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->a:Lmaster/flame/danmaku/danmaku/model/r$b;

    .line 2
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->b:Lmaster/flame/danmaku/danmaku/model/r$b;

    .line 3
    iget v0, p2, Lmaster/flame/danmaku/danmaku/model/r$b;->a:F

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/r$b;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->f:F

    .line 4
    iget p2, p2, Lmaster/flame/danmaku/danmaku/model/r$b;->b:F

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/r$b;->b:F

    sub-float/2addr p2, p1

    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/r$a;->g:F

    return-void
.end method
