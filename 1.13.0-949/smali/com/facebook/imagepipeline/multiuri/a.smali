.class public Lcom/facebook/imagepipeline/multiuri/a;
.super Ljava/lang/Object;
.source "MultiUri.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/multiuri/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/multiuri/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/facebook/imagepipeline/multiuri/a$b;->a(Lcom/facebook/imagepipeline/multiuri/a$b;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/multiuri/a;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/multiuri/a$b;->b(Lcom/facebook/imagepipeline/multiuri/a$b;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/multiuri/a;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 5
    invoke-static {p1}, Lcom/facebook/imagepipeline/multiuri/a$b;->c(Lcom/facebook/imagepipeline/multiuri/a$b;)[Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/multiuri/a;->b:[Lcom/facebook/imagepipeline/request/ImageRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/multiuri/a$b;Lcom/facebook/imagepipeline/multiuri/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/multiuri/a;-><init>(Lcom/facebook/imagepipeline/multiuri/a$b;)V

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/multiuri/a$b;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/multiuri/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/multiuri/a$b;-><init>(Lcom/facebook/imagepipeline/multiuri/a$a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/multiuri/a;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/multiuri/a;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public d()[Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/multiuri/a;->b:[Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method
