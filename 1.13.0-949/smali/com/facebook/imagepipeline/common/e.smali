.class public Lcom/facebook/imagepipeline/common/e;
.super Ljava/lang/Object;
.source "RotationOptions.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/common/e$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x5a

.field public static final e:I = 0xb4

.field public static final f:I = 0x10e

.field private static final g:I = -0x1

.field private static final h:I = -0x2

.field private static final i:Lcom/facebook/imagepipeline/common/e;

.field private static final j:Lcom/facebook/imagepipeline/common/e;

.field private static final k:Lcom/facebook/imagepipeline/common/e;


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/e;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/common/e;-><init>(IZ)V

    sput-object v0, Lcom/facebook/imagepipeline/common/e;->i:Lcom/facebook/imagepipeline/common/e;

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/common/e;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lcom/facebook/imagepipeline/common/e;-><init>(IZ)V

    sput-object v0, Lcom/facebook/imagepipeline/common/e;->j:Lcom/facebook/imagepipeline/common/e;

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/common/e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/common/e;-><init>(IZ)V

    sput-object v0, Lcom/facebook/imagepipeline/common/e;->k:Lcom/facebook/imagepipeline/common/e;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rotation",
            "canDeferUntilRendered"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/imagepipeline/common/e;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/common/e;->b:Z

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/common/e;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/common/e;->i:Lcom/facebook/imagepipeline/common/e;

    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/common/e;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/common/e;->k:Lcom/facebook/imagepipeline/common/e;

    return-object v0
.end method

.method public static d()Lcom/facebook/imagepipeline/common/e;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/common/e;->j:Lcom/facebook/imagepipeline/common/e;

    return-object v0
.end method

.method public static e(I)Lcom/facebook/imagepipeline/common/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/common/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/common/e;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/e;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/facebook/imagepipeline/common/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/common/e;

    .line 3
    iget v1, p0, Lcom/facebook/imagepipeline/common/e;->a:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/e;->a:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/e;->b:Z

    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/e;->b:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/facebook/imagepipeline/common/e;->a:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rotation is set to use EXIF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/facebook/imagepipeline/common/e;->a:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/facebook/imagepipeline/common/e;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/facebook/imagepipeline/common/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/e;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/util/b;->h(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/imagepipeline/common/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/e;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-string v2, "%d defer:%b"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
