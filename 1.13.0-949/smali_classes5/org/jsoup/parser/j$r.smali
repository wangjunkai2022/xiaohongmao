.class final enum Lorg/jsoup/parser/j$r;
.super Lorg/jsoup/parser/j;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/j;-><init>(Ljava/lang/String;ILorg/jsoup/parser/j$k;)V

    return-void
.end method


# virtual methods
.method m(Lorg/jsoup/parser/i;Lorg/jsoup/parser/a;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/i;->i(Z)Lorg/jsoup/parser/Token$i;

    .line 3
    iget-object v0, p1, Lorg/jsoup/parser/i;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->u()C

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$i;->v(C)V

    .line 4
    iget-object v0, p1, Lorg/jsoup/parser/i;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->u()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    sget-object p2, Lorg/jsoup/parser/j;->A:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->a(Lorg/jsoup/parser/j;)V

    goto :goto_0

    :cond_0
    const-string p2, "</"

    .line 6
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->m(Ljava/lang/String;)V

    .line 7
    sget-object p2, Lorg/jsoup/parser/j;->v:Lorg/jsoup/parser/j;

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    :goto_0
    return-void
.end method
