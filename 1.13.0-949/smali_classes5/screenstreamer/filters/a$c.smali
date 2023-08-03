.class Lscreenstreamer/filters/a$c;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/filters/a;->v(I[F)V
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

    iput-object p1, p0, Lscreenstreamer/filters/a$c;->c:Lscreenstreamer/filters/a;

    iput p2, p0, Lscreenstreamer/filters/a$c;->a:I

    iput-object p3, p0, Lscreenstreamer/filters/a$c;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lscreenstreamer/filters/a$c;->a:I

    iget-object v1, p0, Lscreenstreamer/filters/a$c;->b:[F

    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
