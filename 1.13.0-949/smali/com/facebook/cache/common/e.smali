.class public Lcom/facebook/cache/common/e;
.super Lcom/facebook/cache/common/j;
.source "DebuggingCacheKey.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final c:Ljava/lang/Object;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "callerContext",
            "sourceUri"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/cache/common/e;->c:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/facebook/cache/common/e;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/common/e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/common/e;->d:Landroid/net/Uri;

    return-object v0
.end method
