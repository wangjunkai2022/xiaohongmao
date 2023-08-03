.class Lorg/jsoup/select/a$a;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/jsoup/select/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/jsoup/nodes/g;

.field private final b:Lorg/jsoup/select/Elements;

.field private final c:Lorg/jsoup/select/c;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/g;Lorg/jsoup/select/Elements;Lorg/jsoup/select/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/select/a$a;->a:Lorg/jsoup/nodes/g;

    .line 3
    iput-object p2, p0, Lorg/jsoup/select/a$a;->b:Lorg/jsoup/select/Elements;

    .line 4
    iput-object p3, p0, Lorg/jsoup/select/a$a;->c:Lorg/jsoup/select/c;

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/k;I)V
    .locals 0

    return-void
.end method

.method public b(Lorg/jsoup/nodes/k;I)V
    .locals 1

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/g;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lorg/jsoup/nodes/g;

    .line 3
    iget-object p2, p0, Lorg/jsoup/select/a$a;->c:Lorg/jsoup/select/c;

    iget-object v0, p0, Lorg/jsoup/select/a$a;->a:Lorg/jsoup/nodes/g;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/jsoup/select/a$a;->b:Lorg/jsoup/select/Elements;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
