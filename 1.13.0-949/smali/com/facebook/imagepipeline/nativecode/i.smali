.class public Lcom/facebook/imagepipeline/nativecode/i;
.super Ljava/lang/Object;
.source "WebpTranscoderFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static a:Lcom/facebook/imagepipeline/nativecode/h; = null

.field public static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    const-class v0, Lcom/facebook/imagepipeline/nativecode/WebpTranscoderImpl;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/nativecode/h;

    sput-object v0, Lcom/facebook/imagepipeline/nativecode/i;->a:Lcom/facebook/imagepipeline/nativecode/h;

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/facebook/imagepipeline/nativecode/i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/facebook/imagepipeline/nativecode/i;->b:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/nativecode/h;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/nativecode/i;->a:Lcom/facebook/imagepipeline/nativecode/h;

    return-object v0
.end method
