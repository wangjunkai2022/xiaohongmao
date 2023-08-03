.class Lorg/jsoup/nodes/g$b;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lorg/jsoup/select/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/g;->s2()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lorg/jsoup/nodes/g;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/g;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/jsoup/nodes/g$b;->b:Lorg/jsoup/nodes/g;

    iput-object p2, p0, Lorg/jsoup/nodes/g$b;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/k;I)V
    .locals 0

    return-void
.end method

.method public b(Lorg/jsoup/nodes/k;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/n;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lorg/jsoup/nodes/n;

    .line 3
    iget-object p2, p0, Lorg/jsoup/nodes/g$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jsoup/nodes/n;->o0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
