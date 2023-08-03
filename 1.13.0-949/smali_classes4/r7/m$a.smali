.class public Lr7/m$a;
.super Ljava/lang/Object;
.source "RegEx.java"

# interfaces
.implements Lt7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt7/f<",
        "Lr7/m;",
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

    check-cast p1, Lr7/m;

    invoke-virtual {p0, p1, p2}, Lr7/m$a;->b(Lr7/m;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public b(Lr7/m;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 0

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    sget-object p1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p1

    .line 5
    :catch_0
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1
.end method
