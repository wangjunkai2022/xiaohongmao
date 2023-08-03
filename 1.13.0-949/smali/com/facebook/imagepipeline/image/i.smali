.class public Lcom/facebook/imagepipeline/image/i;
.super Ljava/lang/Object;
.source "OriginalEncodedImageInfo.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final g:Lcom/facebook/imagepipeline/image/i;


# instance fields
.field private final a:Landroid/net/Uri;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/image/i;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/image/i;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/image/i;->g:Lcom/facebook/imagepipeline/image/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/i;->a:Landroid/net/Uri;

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->NOT_SET:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    iput-object v1, p0, Lcom/facebook/imagepipeline/image/i;->b:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    .line 4
    iput-object v0, p0, Lcom/facebook/imagepipeline/image/i;->c:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/facebook/imagepipeline/image/i;->d:I

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/image/i;->e:I

    .line 7
    iput v0, p0, Lcom/facebook/imagepipeline/image/i;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/imagepipeline/image/EncodedImageOrigin;Ljava/lang/Object;III)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceUri",
            "origin",
            "callerContext",
            "width",
            "height",
            "size"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/i;->a:Landroid/net/Uri;

    .line 10
    iput-object p2, p0, Lcom/facebook/imagepipeline/image/i;->b:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    .line 11
    iput-object p3, p0, Lcom/facebook/imagepipeline/image/i;->c:Ljava/lang/Object;

    .line 12
    iput p4, p0, Lcom/facebook/imagepipeline/image/i;->d:I

    .line 13
    iput p5, p0, Lcom/facebook/imagepipeline/image/i;->e:I

    .line 14
    iput p6, p0, Lcom/facebook/imagepipeline/image/i;->f:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/i;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/image/i;->e:I

    return v0
.end method

.method public c()Lcom/facebook/imagepipeline/image/EncodedImageOrigin;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/i;->b:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/image/i;->f:I

    return v0
.end method

.method public e()Landroid/net/Uri;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/image/i;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/image/i;->d:I

    return v0
.end method
