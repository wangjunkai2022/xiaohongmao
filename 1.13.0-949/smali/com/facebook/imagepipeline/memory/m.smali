.class public Lcom/facebook/imagepipeline/memory/m;
.super Ljava/lang/Object;
.source "DefaultByteArrayPoolParams.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final a:I = 0x4000

.field private static final b:I = 0x5

.field private static final c:I = 0x14000

.field private static final d:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/memory/f0;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/16 v1, 0x4000

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    new-instance v1, Lcom/facebook/imagepipeline/memory/f0;

    const v2, 0x14000

    const/high16 v3, 0x100000

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/memory/f0;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v1
.end method
