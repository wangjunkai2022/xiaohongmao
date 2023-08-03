.class public abstract Lmaster/flame/danmaku/danmaku/model/b;
.super Ljava/lang/Object;
.source "AbsDisplayer.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmaster/flame/danmaku/danmaku/model/n;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A(Z)V
.end method

.method public abstract B(F)V
.end method

.method public abstract C(I)V
.end method

.method public abstract D(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract u()V
.end method

.method public abstract v(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/Object;FFZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            "TT;FFZ)V"
        }
    .end annotation
.end method

.method public abstract w()Lmaster/flame/danmaku/danmaku/model/android/b;
.end method

.method public abstract x()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract y(Lmaster/flame/danmaku/danmaku/model/android/b;)V
.end method

.method public abstract z(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
