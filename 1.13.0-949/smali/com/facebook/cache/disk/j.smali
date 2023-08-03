.class public Lcom/facebook/cache/disk/j;
.super Ljava/lang/Object;
.source "ScoreBasedEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/h;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ageWeight",
            "sizeWeight"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/cache/disk/j;->a:F

    .line 3
    iput p2, p0, Lcom/facebook/cache/disk/j;->b:F

    return-void
.end method


# virtual methods
.method a(Lcom/facebook/cache/disk/d$c;J)F
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "now"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/cache/disk/d$c;->b()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 2
    invoke-interface {p1}, Lcom/facebook/cache/disk/d$c;->getSize()J

    move-result-wide v0

    .line 3
    iget p1, p0, Lcom/facebook/cache/disk/j;->a:F

    long-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lcom/facebook/cache/disk/j;->b:F

    long-to-float p3, v0

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method public get()Lcom/facebook/cache/disk/g;
    .locals 1

    new-instance v0, Lcom/facebook/cache/disk/j$a;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/j$a;-><init>(Lcom/facebook/cache/disk/j;)V

    return-object v0
.end method
