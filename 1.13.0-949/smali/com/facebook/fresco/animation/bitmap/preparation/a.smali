.class public interface abstract Lcom/facebook/fresco/animation/bitmap/preparation/a;
.super Ljava/lang/Object;
.source "BitmapFramePreparationStrategy.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract a(Lcom/facebook/fresco/animation/bitmap/preparation/b;Lb1/b;Lcom/facebook/fresco/animation/backend/a;I)V
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
.end method
