.class public Lcom/facebook/fresco/animation/bitmap/preparation/d;
.super Ljava/lang/Object;
.source "FixedNumberBitmapFramePreparationStrategy.java"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:I = 0x3


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/fresco/animation/bitmap/preparation/d;

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/d;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/bitmap/preparation/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framesToPrepare"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/d;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/fresco/animation/bitmap/preparation/b;Lb1/b;Lcom/facebook/fresco/animation/backend/a;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapFramePreparer",
            "bitmapFrameCache",
            "animationBackend",
            "lastDrawnFrameNumber"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :goto_0
    iget v1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/d;->a:I

    if-gt v0, v1, :cond_2

    add-int v1, p4, v0

    .line 2
    invoke-interface {p3}, Lcom/facebook/fresco/animation/backend/d;->a()I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x2

    .line 3
    invoke-static {v2}, Lp0/a;->R(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/d;->b:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Preparing frame %d, last drawn: %d"

    invoke-static {v2, v5, v3, v4}, Lp0/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-interface {p1, p2, p3, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/b;->a(Lb1/b;Lcom/facebook/fresco/animation/backend/a;I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
