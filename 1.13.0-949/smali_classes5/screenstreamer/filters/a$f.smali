.class Lscreenstreamer/filters/a$f;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/filters/a;->u(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[F

.field final synthetic c:Lscreenstreamer/filters/a;


# direct methods
.method constructor <init>(Lscreenstreamer/filters/a;I[F)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/filters/a$f;->c:Lscreenstreamer/filters/a;

    iput p2, p0, Lscreenstreamer/filters/a$f;->a:I

    iput-object p3, p0, Lscreenstreamer/filters/a$f;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lscreenstreamer/filters/a$f;->a:I

    iget-object v1, p0, Lscreenstreamer/filters/a$f;->b:[F

    array-length v2, v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform1fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
