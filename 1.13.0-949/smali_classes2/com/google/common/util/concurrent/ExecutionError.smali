.class public Lcom/google/common/util/concurrent/ExecutionError;
.super Ljava/lang/Error;
.source "ExecutionError.java"


# annotations
.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Error;)V
    .locals 0
    .param p1    # Ljava/lang/Error;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Error;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Error;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
