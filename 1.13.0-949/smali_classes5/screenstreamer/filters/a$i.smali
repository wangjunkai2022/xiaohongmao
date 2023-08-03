.class Lscreenstreamer/filters/a$i;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/filters/a;->B(I[F)V
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

    iput-object p1, p0, Lscreenstreamer/filters/a$i;->c:Lscreenstreamer/filters/a;

    iput p2, p0, Lscreenstreamer/filters/a$i;->a:I

    iput-object p3, p0, Lscreenstreamer/filters/a$i;->b:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lscreenstreamer/filters/a$i;->a:I

    iget-object v1, p0, Lscreenstreamer/filters/a$i;->b:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method
