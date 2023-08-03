.class Lorg/jsoup/nodes/g$a;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lorg/jsoup/select/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/g;->l2()Ljava/lang/String;
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

    iput-object p1, p0, Lorg/jsoup/nodes/g$a;->b:Lorg/jsoup/nodes/g;

    iput-object p2, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/k;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/g;

    if-eqz p2, :cond_0

    .line 2
    move-object p2, p1

    check-cast p2, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->C1()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->G()Lorg/jsoup/nodes/k;

    move-result-object p1

    instance-of p1, p1, Lorg/jsoup/nodes/n;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/nodes/n;->q0(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
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
    iget-object p2, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lorg/jsoup/nodes/g;->i0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/n;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/g;

    if-eqz p2, :cond_2

    .line 5
    check-cast p1, Lorg/jsoup/nodes/g;

    .line 6
    iget-object p2, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->C1()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/jsoup/nodes/g;->j0(Lorg/jsoup/nodes/g;)Lorg/jsoup/parser/g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/g;->l()Ljava/lang/String;

    move-result-object p1

    const-string p2, "br"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p1}, Lorg/jsoup/nodes/n;->q0(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method
