.class public interface abstract Lcom/facebook/imagepipeline/memory/g0;
.super Ljava/lang/Object;
.source "PoolStatsTracker.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "buckets_used_"

.field public static final b:Ljava/lang/String; = "used_count"

.field public static final c:Ljava/lang/String; = "used_bytes"

.field public static final d:Ljava/lang/String; = "free_count"

.field public static final e:Ljava/lang/String; = "free_bytes"

.field public static final f:Ljava/lang/String; = "soft_cap"

.field public static final g:Ljava/lang/String; = "hard_cap"


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeInBytes"
        }
    .end annotation
.end method

.method public abstract c(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeInBytes"
        }
    .end annotation
.end method

.method public abstract d(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public abstract e(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketedSize"
        }
    .end annotation
.end method

.method public abstract f(Lcom/facebook/imagepipeline/memory/BasePool;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "basePool"
        }
    .end annotation
.end method

.method public abstract g()V
.end method
