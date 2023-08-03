.class public Ly0/a;
.super Lcom/facebook/drawee/controller/b;
.source "ImageLoadingTimeControllerListener.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private b:J

.field private c:J

.field private d:Ly0/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly0/b;)V
    .locals 2
    .param p1    # Ly0/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageLoadingTimeListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/controller/b;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Ly0/a;->b:J

    .line 3
    iput-wide v0, p0, Ly0/a;->c:J

    .line 4
    iput-object p1, p0, Ly0/a;->d:Ly0/b;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo",
            "animatable"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ly0/a;->c:J

    .line 2
    iget-object p3, p0, Ly0/a;->d:Ly0/b;

    if-eqz p3, :cond_0

    .line 3
    iget-wide v0, p0, Ly0/a;->b:J

    sub-long/2addr p1, v0

    invoke-interface {p3, p1, p2}, Ly0/b;->a(J)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ly0/a;->b:J

    return-void
.end method
