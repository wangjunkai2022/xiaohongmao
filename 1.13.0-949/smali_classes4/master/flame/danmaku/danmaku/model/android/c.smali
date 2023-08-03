.class public Lmaster/flame/danmaku/danmaku/model/android/c;
.super Ljava/lang/Object;
.source "CachingPolicy.java"


# static fields
.field public static final h:I = 0x10

.field public static final i:I = 0x20

.field public static final j:I = 0x0

.field public static final k:I = -0x1

.field public static final l:Lmaster/flame/danmaku/danmaku/model/android/c;

.field public static final m:Lmaster/flame/danmaku/danmaku/model/android/c;

.field public static final n:Lmaster/flame/danmaku/danmaku/model/android/c;


# instance fields
.field public a:I

.field public b:F

.field public c:J

.field public d:F

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v7, Lmaster/flame/danmaku/danmaku/model/android/c;

    const/16 v1, 0x10

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    const/16 v5, 0x32

    const v6, 0x3c23d70a    # 0.01f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmaster/flame/danmaku/danmaku/model/android/c;-><init>(IFJIF)V

    sput-object v7, Lmaster/flame/danmaku/danmaku/model/android/c;->l:Lmaster/flame/danmaku/danmaku/model/android/c;

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/c;

    const/16 v9, 0x10

    const/high16 v10, 0x3f000000    # 0.5f

    const-wide/16 v11, -0x1

    const/16 v13, 0x32

    const v14, 0x3ba3d70a    # 0.005f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lmaster/flame/danmaku/danmaku/model/android/c;-><init>(IFJIF)V

    sput-object v0, Lmaster/flame/danmaku/danmaku/model/android/c;->m:Lmaster/flame/danmaku/danmaku/model/android/c;

    .line 3
    sput-object v7, Lmaster/flame/danmaku/danmaku/model/android/c;->n:Lmaster/flame/danmaku/danmaku/model/android/c;

    return-void
.end method

.method public constructor <init>(IFJIF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    .line 2
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->b:F

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->c:J

    const v0, 0x3c23d70a    # 0.01f

    .line 4
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->d:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->e:I

    const/16 v0, 0x14

    .line 6
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->f:I

    const/16 v0, 0x96

    .line 7
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->g:I

    .line 8
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->a:I

    const/16 p1, 0x20

    .line 9
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->a:I

    .line 10
    iput p2, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->b:F

    .line 11
    iput-wide p3, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->c:J

    .line 12
    iput p5, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->e:I

    .line 13
    iput p6, p0, Lmaster/flame/danmaku/danmaku/model/android/c;->d:F

    return-void
.end method
