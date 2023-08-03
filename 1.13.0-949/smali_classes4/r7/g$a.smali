.class public Lr7/g$a;
.super Ljava/lang/Object;
.source "Nonnull.java"

# interfaces
.implements Lt7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt7/f<",
        "Lr7/g;",
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

    check-cast p1, Lr7/g;

    invoke-virtual {p0, p1, p2}, Lr7/g$a;->b(Lr7/g;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public b(Lr7/g;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    sget-object p1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object p1
.end method
