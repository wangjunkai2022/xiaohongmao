.class public Lcom/airbnb/lottie/model/content/a;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/animatable/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/airbnb/lottie/model/animatable/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/f;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/f;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/animatable/m;

    .line 4
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/a;->c:Lcom/airbnb/lottie/model/animatable/f;

    .line 5
    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/a;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/airbnb/lottie/model/content/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/c;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/animation/content/f;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/f;-><init>(Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/animatable/m;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->c:Lcom/airbnb/lottie/model/animatable/f;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/a;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/a;->d:Z

    return v0
.end method
