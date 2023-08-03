.class public abstract Lcom/facebook/imagepipeline/image/b;
.super Lcom/facebook/imagepipeline/image/c;
.source "CloseableBitmap.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract k()Landroid/graphics/Bitmap;
.end method
