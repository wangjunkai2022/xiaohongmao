.class Lcom/airbnb/lottie/parser/x;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/animation/keyframe/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->D()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Lcom/airbnb/lottie/utils/h;->e()F

    move-result v1

    sget-object v2, Lcom/airbnb/lottie/parser/y;->a:Lcom/airbnb/lottie/parser/y;

    .line 3
    invoke-static {p0, p1, v1, v2, v0}, Lcom/airbnb/lottie/parser/q;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/f;FLcom/airbnb/lottie/parser/k0;Z)Lcom/airbnb/lottie/value/a;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/h;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/lottie/animation/keyframe/h;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/value/a;)V

    return-object v0
.end method
