.class public Lcom/facebook/imagepipeline/backends/okhttp3/b;
.super Ljava/lang/Object;
.source "OkHttpImagePipelineConfigFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lokhttp3/OkHttpClient;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "okHttpClient"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i;->M(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/i$b;

    move-result-object p0

    new-instance v0, Lcom/facebook/imagepipeline/backends/okhttp3/c;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/backends/okhttp3/c;-><init>(Lokhttp3/OkHttpClient;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/i$b;->r0(Lcom/facebook/imagepipeline/producers/l0;)Lcom/facebook/imagepipeline/core/i$b;

    move-result-object p0

    return-object p0
.end method
