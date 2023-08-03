.class public Lcom/facebook/imagepipeline/nativecode/c;
.super Ljava/lang/Object;
.source "NativeFiltersLoader.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const-string v0, "native-filters"

    invoke-static {v0}, Ly1/a;->f(Ljava/lang/String;)Z

    return-void
.end method
