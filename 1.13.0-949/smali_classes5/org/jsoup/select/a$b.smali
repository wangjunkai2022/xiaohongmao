.class Lorg/jsoup/select/a$b;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/jsoup/select/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/jsoup/nodes/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Lorg/jsoup/nodes/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final c:Lorg/jsoup/select/c;


# direct methods
.method constructor <init>(Lorg/jsoup/select/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jsoup/select/a$b;->a:Lorg/jsoup/nodes/g;

    .line 3
    iput-object v0, p0, Lorg/jsoup/select/a$b;->b:Lorg/jsoup/nodes/g;

    .line 4
    iput-object p1, p0, Lorg/jsoup/select/a$b;->c:Lorg/jsoup/select/c;

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/k;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 0

    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method

.method public b(Lorg/jsoup/nodes/k;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 1
    instance-of p2, p1, Lorg/jsoup/nodes/g;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lorg/jsoup/nodes/g;

    .line 3
    iget-object p2, p0, Lorg/jsoup/select/a$b;->c:Lorg/jsoup/select/c;

    iget-object v0, p0, Lorg/jsoup/select/a$b;->a:Lorg/jsoup/nodes/g;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iput-object p1, p0, Lorg/jsoup/select/a$b;->b:Lorg/jsoup/nodes/g;

    .line 5
    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1

    .line 6
    :cond_0
    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method

.method c(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 0
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/jsoup/select/a$b;->a:Lorg/jsoup/nodes/g;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/jsoup/select/a$b;->b:Lorg/jsoup/nodes/g;

    .line 3
    invoke-static {p0, p2}, Lorg/jsoup/select/d;->a(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/k;)Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 4
    iget-object p1, p0, Lorg/jsoup/select/a$b;->b:Lorg/jsoup/nodes/g;

    return-object p1
.end method
