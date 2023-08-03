.class public interface abstract Lcom/facebook/fresco/animation/frame/b;
.super Ljava/lang/Object;
.source "FrameScheduler.java"


# static fields
.field public static final a:I = -0x1

.field public static final b:I = -0x1


# virtual methods
.method public abstract a(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation
.end method

.method public abstract b(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationTimeMs"
        }
    .end annotation
.end method

.method public abstract c(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animationTimeMs",
            "lastFrameTimeMs"
        }
    .end annotation
.end method

.method public abstract d()Z
.end method

.method public abstract e()J
.end method
