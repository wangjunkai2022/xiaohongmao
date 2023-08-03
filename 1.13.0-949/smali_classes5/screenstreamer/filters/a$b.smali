.class Lscreenstreamer/filters/a$b;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscreenstreamer/filters/a;->t(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lscreenstreamer/filters/a;


# direct methods
.method constructor <init>(Lscreenstreamer/filters/a;IF)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/filters/a$b;->c:Lscreenstreamer/filters/a;

    iput p2, p0, Lscreenstreamer/filters/a$b;->a:I

    iput p3, p0, Lscreenstreamer/filters/a$b;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lscreenstreamer/filters/a$b;->a:I

    iget v1, p0, Lscreenstreamer/filters/a$b;->b:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
