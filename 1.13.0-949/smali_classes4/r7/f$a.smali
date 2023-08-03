.class public Lr7/f$a;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Lt7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt7/f<",
        "Lr7/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 0

    check-cast p1, Lr7/f;

    invoke-virtual {p0, p1, p2}, Lr7/f$a;->b(Lr7/f;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public b(Lr7/f;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 5

    .line 1
    instance-of p1, p2, Ljava/lang/Number;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    .line 3
    :cond_0
    check-cast p2, Ljava/lang/Number;

    .line 4
    instance-of p1, p2, Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_2
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    goto :goto_0

    .line 8
    :cond_3
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    :goto_0
    if-eqz v0, :cond_5

    .line 11
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    .line 12
    :cond_5
    sget-object p1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p1
.end method
