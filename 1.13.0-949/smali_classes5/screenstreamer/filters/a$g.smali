.class Lscreenstreamer/filters/a$g;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/filters/a;->z(ILandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/PointF;

.field final synthetic b:I

.field final synthetic c:Lscreenstreamer/filters/a;


# direct methods
.method constructor <init>(Lscreenstreamer/filters/a;Landroid/graphics/PointF;I)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/filters/a$g;->c:Lscreenstreamer/filters/a;

    iput-object p2, p0, Lscreenstreamer/filters/a$g;->a:Landroid/graphics/PointF;

    iput p3, p0, Lscreenstreamer/filters/a$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget-object v1, p0, Lscreenstreamer/filters/a$g;->a:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 2
    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    iget v1, p0, Lscreenstreamer/filters/a$g;->b:I

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void
.end method
