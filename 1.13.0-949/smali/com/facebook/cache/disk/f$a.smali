.class Lcom/facebook/cache/disk/f$a;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/facebook/cache/disk/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public final b:Ljava/io/File;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/facebook/cache/disk/d;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/cache/disk/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootDirectory",
            "delegate"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/facebook/cache/disk/f$a;->a:Lcom/facebook/cache/disk/d;

    .line 3
    iput-object p1, p0, Lcom/facebook/cache/disk/f$a;->b:Ljava/io/File;

    return-void
.end method
