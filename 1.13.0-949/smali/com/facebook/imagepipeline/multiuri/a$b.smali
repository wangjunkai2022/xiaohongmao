.class public Lcom/facebook/imagepipeline/multiuri/a$b;
.super Ljava/lang/Object;
.source "MultiUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/multiuri/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/multiuri/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/multiuri/a$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/multiuri/a$b;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/multiuri/a$b;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/multiuri/a$b;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/multiuri/a$b;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/multiuri/a$b;)[Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/multiuri/a$b;->c:[Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/facebook/imagepipeline/multiuri/a;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/multiuri/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/multiuri/a;-><init>(Lcom/facebook/imagepipeline/multiuri/a$b;Lcom/facebook/imagepipeline/multiuri/a$a;)V

    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/multiuri/a$b;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "highResImageRequest"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/multiuri/a$b;->b:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object p0
.end method

.method public varargs f([Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/multiuri/a$b;
    .locals 0
    .param p1    # [Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiImageRequests"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/multiuri/a$b;->c:[Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object p0
.end method

.method public g(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/multiuri/a$b;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lowResImageRequest"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/multiuri/a$b;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object p0
.end method
