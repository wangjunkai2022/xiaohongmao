.class public interface abstract Lcom/google/android/exoplayer2/upstream/cache/p;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# static fields
.field public static final a:Ljava/lang/String; = "custom_"

.field public static final b:Ljava/lang/String; = "exo_redir"

.field public static final c:Ljava/lang/String; = "exo_len"


# virtual methods
.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b(Ljava/lang/String;J)J
.end method

.method public abstract c(Ljava/lang/String;[B)[B
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
