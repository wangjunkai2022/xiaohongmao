.class public Lcom/facebook/imagepipeline/memory/c;
.super Ljava/lang/Object;
.source "BitmapCounterConfig.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/c$b;
    }
.end annotation


# static fields
.field public static final b:I = 0x180


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x180

    .line 2
    iput v0, p0, Lcom/facebook/imagepipeline/memory/c;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/c$b;->b()I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/memory/c;->a:I

    return-void
.end method

.method public static b()Lcom/facebook/imagepipeline/memory/c$b;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/memory/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/c$b;-><init>(Lcom/facebook/imagepipeline/memory/c$a;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/memory/c;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapCount"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/memory/c;->a:I

    return-void
.end method
