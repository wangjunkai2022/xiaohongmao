package com.qennnsad.aknkaksd.data.bean.user;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.UrlTarget;
import com.qennnsad.aknkaksd.presentation.module.main.webview.n;
import io.sentry.protocol.w;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: UserBean.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bx\b\u0086\b\u0018\u00002\u00020\u0001:\u0002»\u0001BÇ\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0005\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u0012\u0006\u0010\u001c\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0005\u0012\b\b\u0002\u0010 \u001a\u00020\u0005\u0012\b\b\u0002\u0010!\u001a\u00020\u0005\u0012\b\b\u0002\u0010\"\u001a\u00020\u0003\u0012\b\b\u0002\u0010#\u001a\u00020\u0005\u0012\u0006\u0010$\u001a\u00020\u0003\u0012\b\b\u0002\u0010%\u001a\u00020\u0005\u0012\u0006\u0010&\u001a\u00020'\u0012\b\b\u0002\u0010(\u001a\u00020'\u0012\b\b\u0002\u0010)\u001a\u00020'\u0012\b\b\u0002\u0010*\u001a\u00020'\u0012\b\b\u0002\u0010+\u001a\u00020\u0005\u0012\b\b\u0002\u0010,\u001a\u00020\u0005\u0012\b\b\u0002\u0010-\u001a\u00020\u0005\u0012\b\b\u0002\u0010.\u001a\u00020\u0005\u0012\b\b\u0002\u0010/\u001a\u00020'\u0012\b\b\u0002\u00100\u001a\u00020'\u0012\b\b\u0002\u00101\u001a\u00020'\u0012\b\b\u0002\u00102\u001a\u00020'\u0012\b\b\u0002\u00103\u001a\u00020'\u0012\b\b\u0002\u00104\u001a\u00020'\u0012\b\b\u0002\u00105\u001a\u00020'\u0012\b\b\u0002\u00106\u001a\u00020\u0005\u0012\b\b\u0002\u00107\u001a\u00020\u0005\u0012\b\b\u0002\u00108\u001a\u00020\u0005\u0012\b\b\u0002\u00109\u001a\u00020\u0005\u0012\b\b\u0002\u0010:\u001a\u00020\u0005\u0012\b\b\u0002\u0010;\u001a\u00020\u0005\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010>\u001a\u00020\u0005\u0012\f\u0010?\u001a\b\u0012\u0004\u0012\u00020@0\u0012\u0012\u0006\u0010A\u001a\u00020\u0003\u0012\u0006\u0010B\u001a\u00020\u0003\u0012\f\u0010C\u001a\b\u0012\u0004\u0012\u00020D0\u0012¢\u0006\u0002\u0010EJ\t\u0010x\u001a\u00020\u0003HÆ\u0003J\t\u0010y\u001a\u00020\u0003HÆ\u0003J\t\u0010z\u001a\u00020\u0005HÆ\u0003J\t\u0010{\u001a\u00020\u0003HÆ\u0003J\t\u0010|\u001a\u00020\u0003HÆ\u0003J\u000f\u0010}\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012HÆ\u0003J\t\u0010~\u001a\u00020\u0003HÆ\u0003J\t\u0010\u007f\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0080\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0082\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0083\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0084\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0088\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u008d\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0091\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0093\u0001\u001a\u00020'HÆ\u0003J\n\u0010\u0094\u0001\u001a\u00020'HÆ\u0003J\n\u0010\u0095\u0001\u001a\u00020'HÆ\u0003J\n\u0010\u0096\u0001\u001a\u00020'HÆ\u0003J\n\u0010\u0097\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0098\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u0099\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010\u009a\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u009b\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010\u009c\u0001\u001a\u00020'HÆ\u0003J\n\u0010\u009d\u0001\u001a\u00020'HÆ\u0003J\n\u0010\u009e\u0001\u001a\u00020'HÆ\u0003J\n\u0010\u009f\u0001\u001a\u00020'HÆ\u0003J\n\u0010 \u0001\u001a\u00020'HÆ\u0003J\n\u0010¡\u0001\u001a\u00020'HÆ\u0003J\n\u0010¢\u0001\u001a\u00020'HÆ\u0003J\n\u0010£\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010¤\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¥\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010¦\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010§\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010¨\u0001\u001a\u00020\u0005HÆ\u0003J\n\u0010©\u0001\u001a\u00020\u0005HÆ\u0003J\u0011\u0010ª\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010jJ\u0011\u0010«\u0001\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010jJ\n\u0010¬\u0001\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u00ad\u0001\u001a\b\u0012\u0004\u0012\u00020@0\u0012HÆ\u0003J\n\u0010®\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010¯\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010°\u0001\u001a\u00020\u0003HÆ\u0003J\u0010\u0010±\u0001\u001a\b\u0012\u0004\u0012\u00020D0\u0012HÆ\u0003J\n\u0010²\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010³\u0001\u001a\u00020\u0003HÆ\u0003J\n\u0010´\u0001\u001a\u00020\u0003HÆ\u0003J\u0088\u0005\u0010µ\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u00052\b\b\u0002\u0010\u0019\u001a\u00020\u00052\b\b\u0002\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001b\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00052\b\b\u0002\u0010 \u001a\u00020\u00052\b\b\u0002\u0010!\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020\u00032\b\b\u0002\u0010#\u001a\u00020\u00052\b\b\u0002\u0010$\u001a\u00020\u00032\b\b\u0002\u0010%\u001a\u00020\u00052\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020'2\b\b\u0002\u0010)\u001a\u00020'2\b\b\u0002\u0010*\u001a\u00020'2\b\b\u0002\u0010+\u001a\u00020\u00052\b\b\u0002\u0010,\u001a\u00020\u00052\b\b\u0002\u0010-\u001a\u00020\u00052\b\b\u0002\u0010.\u001a\u00020\u00052\b\b\u0002\u0010/\u001a\u00020'2\b\b\u0002\u00100\u001a\u00020'2\b\b\u0002\u00101\u001a\u00020'2\b\b\u0002\u00102\u001a\u00020'2\b\b\u0002\u00103\u001a\u00020'2\b\b\u0002\u00104\u001a\u00020'2\b\b\u0002\u00105\u001a\u00020'2\b\b\u0002\u00106\u001a\u00020\u00052\b\b\u0002\u00107\u001a\u00020\u00052\b\b\u0002\u00108\u001a\u00020\u00052\b\b\u0002\u00109\u001a\u00020\u00052\b\b\u0002\u0010:\u001a\u00020\u00052\b\b\u0002\u0010;\u001a\u00020\u00052\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010>\u001a\u00020\u00052\u000e\b\u0002\u0010?\u001a\b\u0012\u0004\u0012\u00020@0\u00122\b\b\u0002\u0010A\u001a\u00020\u00032\b\b\u0002\u0010B\u001a\u00020\u00032\u000e\b\u0002\u0010C\u001a\b\u0012\u0004\u0012\u00020D0\u0012HÆ\u0001¢\u0006\u0003\u0010¶\u0001J\u0015\u0010·\u0001\u001a\u00020'2\t\u0010¸\u0001\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\n\u0010¹\u0001\u001a\u00020\u0005HÖ\u0001J\n\u0010º\u0001\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0017\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0011\u0010\u001e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u0011\u0010\u001f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010GR\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bK\u0010IR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bL\u0010IR\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\bM\u0010GR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bN\u0010IR\u0011\u0010\u001a\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bO\u0010IR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bP\u0010IR\u0011\u0010\u001b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bQ\u0010IR\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bR\u0010IR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bS\u0010IR\u0016\u0010\u0016\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bT\u0010IR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012¢\u0006\b\n\u0000\u001a\u0004\bU\u0010VR\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bW\u0010IR\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bX\u0010IR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bY\u0010IR\u0016\u00107\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bZ\u0010GR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b[\u0010IR\u0016\u00106\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010GR\u0016\u0010&\u001a\u00020'8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\\R\u0011\u0010!\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010GR\u0016\u0010%\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010GR\u0011\u0010/\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\\R\u0011\u0010 \u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010GR\u0011\u00101\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\\R\u0011\u00100\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\\R\u0011\u0010-\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010GR\u0011\u0010.\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b.\u0010GR\u0011\u00105\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\\R\u0011\u00103\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\\R\u0011\u00104\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\\R\u0011\u0010*\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\\R\u0011\u0010,\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b,\u0010GR\u0011\u0010+\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b+\u0010GR\u0011\u00102\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\\R\u0011\u0010(\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b]\u0010\\R\u0011\u0010)\u001a\u00020'¢\u0006\b\n\u0000\u001a\u0004\b^\u0010\\R\u0011\u0010B\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b_\u0010IR\u0011\u0010#\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b`\u0010GR\u0017\u0010?\u001a\b\u0012\u0004\u0012\u00020@0\u0012¢\u0006\b\n\u0000\u001a\u0004\ba\u0010VR\u0016\u0010$\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bb\u0010IR\u0011\u0010\"\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bc\u0010IR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bd\u0010IR\u0011\u0010\u000e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\be\u0010GR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bf\u0010IR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bg\u0010IR\u0016\u0010>\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bh\u0010GR\u001a\u0010<\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010k\u001a\u0004\bi\u0010jR\u001a\u0010=\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010k\u001a\u0004\bl\u0010jR\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00020D0\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bm\u0010VR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\bn\u0010GR\u0016\u00109\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bo\u0010GR\u0016\u0010;\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bp\u0010GR\u0016\u00108\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\bq\u0010GR\u0016\u0010:\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\br\u0010GR\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bs\u0010IR\u0011\u0010\u0019\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\bt\u0010GR\u0011\u0010\u001c\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bu\u0010IR\u0011\u0010\u001d\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bv\u0010IR\u0011\u0010A\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\bw\u0010I¨\u0006¼\u0001"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "", "id", "", "sex", "", "intro", "nickname", "city", "avatartime", "birthday", "professional", "emotion", "province", "peerage_id", "avatar", "snap", "follow_users", "", "followers_cnt", "followees_cnt", "emceelevel", "familyLevel", "age", "beanorignal", "spendcoin", "broadcasting", "curroomnum", "toy_enabled", "toy_status", "approveid", "approvetype", "is_attention", "isHit", "name_card", "lob_no", "mysteryId", "isMystery", "isGuest", "", "isanchor", "iswithdraw", "is_lounge_vip", "is_subscribe_notify", "is_single_conversation", "is_group_conversation", "is_im", "is_anchor_rank", "is_family", "is_deposit_chip", "is_withdraw_chip", "is_legend", "is_legend_withdraw", "is_join_peerage", "isAdmin", "interactionReady", "showLevel", "showFamilyLevel", "showPeerage", "showJapanese", "realtimeTranslationEnable", "realtimeTranslationType", "realtimeSubtitlesOn", "menus", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;", w.b.f83891c, "iswithdraw_promotion", "settings", "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getAge", "()I", "getApproveid", "()Ljava/lang/String;", "getApprovetype", "getAvatar", "getAvatartime", "getBeanorignal", "getBirthday", "getBroadcasting", "getCity", "getCurroomnum", "getEmceelevel", "getEmotion", "getFamilyLevel", "getFollow_users", "()Ljava/util/List;", "getFollowees_cnt", "getFollowers_cnt", "getId", "getInteractionReady", "getIntro", "()Z", "getIsanchor", "getIswithdraw", "getIswithdraw_promotion", "getLob_no", "getMenus", "getMysteryId", "getName_card", "getNickname", "getPeerage_id", "getProfessional", "getProvince", "getRealtimeSubtitlesOn", "getRealtimeTranslationEnable", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getRealtimeTranslationType", "getSettings", "getSex", "getShowFamilyLevel", "getShowJapanese", "getShowLevel", "getShowPeerage", "getSnap", "getSpendcoin", "getToy_enabled", "getToy_status", "getUsername", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component3", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component4", "component40", "component41", "component42", "component43", "component44", "component45", "component46", "component47", "component48", "component49", "component5", "component50", "component51", "component52", "component53", "component54", "component55", "component56", "component57", "component58", "component59", "component6", "component60", "component61", "component7", "component8", "component9", "copy", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;IZZZZIIIIZZZZZZZIIIIIILjava/lang/Integer;Ljava/lang/Integer;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "equals", "other", "hashCode", "toString", "MenuBean", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserBean {
    private final int age;
    @g
    private final String approveid;
    private final int approvetype;
    @g
    private final String avatar;
    @g
    private final String avatartime;
    private final int beanorignal;
    @g
    private final String birthday;
    @g
    private final String broadcasting;
    @g
    private final String city;
    @g
    private final String curroomnum;
    @g
    private final String emceelevel;
    @g
    private final String emotion;
    @SerializedName("family_level")
    @g
    private final String familyLevel;
    @g
    private final List<String> follow_users;
    @g
    private final String followees_cnt;
    @g
    private final String followers_cnt;
    @g
    private final String id;
    @SerializedName("interaction_ready")
    private final int interactionReady;
    @g
    private final String intro;
    @SerializedName("is_admin")
    private final int isAdmin;
    @SerializedName("guest")
    private final boolean isGuest;
    private final int isHit;
    @SerializedName("is_mystery")
    private final int isMystery;
    private final boolean is_anchor_rank;
    private final int is_attention;
    private final boolean is_deposit_chip;
    private final boolean is_family;
    private final int is_group_conversation;
    private final int is_im;
    private final boolean is_join_peerage;
    private final boolean is_legend;
    private final boolean is_legend_withdraw;
    private final boolean is_lounge_vip;
    private final int is_single_conversation;
    private final int is_subscribe_notify;
    private final boolean is_withdraw_chip;
    private final boolean isanchor;
    private final boolean iswithdraw;
    @g
    private final String iswithdraw_promotion;
    private final int lob_no;
    @g
    private final List<MenuBean> menus;
    @SerializedName("mystery_id")
    @g
    private final String mysteryId;
    @g
    private final String name_card;
    @g
    private final String nickname;
    private final int peerage_id;
    @g
    private final String professional;
    @g
    private final String province;
    @SerializedName("realtime_subtitles_on")
    private final int realtimeSubtitlesOn;
    @SerializedName("realtime_translation_enable")
    @h
    private final Integer realtimeTranslationEnable;
    @SerializedName("realtime_translation_type")
    @h
    private final Integer realtimeTranslationType;
    @SerializedName("setup")
    @g
    private final List<SettingsBean> settings;
    private final int sex;
    @SerializedName("show_family_level")
    private final int showFamilyLevel;
    @SerializedName("show_japanese")
    private final int showJapanese;
    @SerializedName("show_level")
    private final int showLevel;
    @SerializedName("show_peerage")
    private final int showPeerage;
    @g
    private final String snap;
    private final int spendcoin;
    @g
    private final String toy_enabled;
    @g
    private final String toy_status;
    @g
    private final String username;

    public UserBean(@g String id, int i4, @g String intro, @g String nickname, @g String city, @g String avatartime, @g String birthday, @g String professional, @g String emotion, @g String province, int i10, @g String avatar, @g String snap, @g List<String> follow_users, @g String followers_cnt, @g String followees_cnt, @g String emceelevel, @g String familyLevel, int i11, int i12, int i13, @g String broadcasting, @g String curroomnum, @g String toy_enabled, @g String toy_status, @g String approveid, int i14, int i15, int i16, @g String name_card, int i17, @g String mysteryId, int i18, boolean z9, boolean z10, boolean z11, boolean z12, int i19, int i20, int i21, int i22, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i23, int i24, int i25, int i26, int i27, int i28, @h Integer num, @h Integer num2, int i29, @g List<MenuBean> menus, @g String username, @g String iswithdraw_promotion, @g List<SettingsBean> settings) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(intro, "intro");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(avatartime, "avatartime");
        Intrinsics.checkNotNullParameter(birthday, "birthday");
        Intrinsics.checkNotNullParameter(professional, "professional");
        Intrinsics.checkNotNullParameter(emotion, "emotion");
        Intrinsics.checkNotNullParameter(province, "province");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(snap, "snap");
        Intrinsics.checkNotNullParameter(follow_users, "follow_users");
        Intrinsics.checkNotNullParameter(followers_cnt, "followers_cnt");
        Intrinsics.checkNotNullParameter(followees_cnt, "followees_cnt");
        Intrinsics.checkNotNullParameter(emceelevel, "emceelevel");
        Intrinsics.checkNotNullParameter(familyLevel, "familyLevel");
        Intrinsics.checkNotNullParameter(broadcasting, "broadcasting");
        Intrinsics.checkNotNullParameter(curroomnum, "curroomnum");
        Intrinsics.checkNotNullParameter(toy_enabled, "toy_enabled");
        Intrinsics.checkNotNullParameter(toy_status, "toy_status");
        Intrinsics.checkNotNullParameter(approveid, "approveid");
        Intrinsics.checkNotNullParameter(name_card, "name_card");
        Intrinsics.checkNotNullParameter(mysteryId, "mysteryId");
        Intrinsics.checkNotNullParameter(menus, "menus");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(iswithdraw_promotion, "iswithdraw_promotion");
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.id = id;
        this.sex = i4;
        this.intro = intro;
        this.nickname = nickname;
        this.city = city;
        this.avatartime = avatartime;
        this.birthday = birthday;
        this.professional = professional;
        this.emotion = emotion;
        this.province = province;
        this.peerage_id = i10;
        this.avatar = avatar;
        this.snap = snap;
        this.follow_users = follow_users;
        this.followers_cnt = followers_cnt;
        this.followees_cnt = followees_cnt;
        this.emceelevel = emceelevel;
        this.familyLevel = familyLevel;
        this.age = i11;
        this.beanorignal = i12;
        this.spendcoin = i13;
        this.broadcasting = broadcasting;
        this.curroomnum = curroomnum;
        this.toy_enabled = toy_enabled;
        this.toy_status = toy_status;
        this.approveid = approveid;
        this.approvetype = i14;
        this.is_attention = i15;
        this.isHit = i16;
        this.name_card = name_card;
        this.lob_no = i17;
        this.mysteryId = mysteryId;
        this.isMystery = i18;
        this.isGuest = z9;
        this.isanchor = z10;
        this.iswithdraw = z11;
        this.is_lounge_vip = z12;
        this.is_subscribe_notify = i19;
        this.is_single_conversation = i20;
        this.is_group_conversation = i21;
        this.is_im = i22;
        this.is_anchor_rank = z13;
        this.is_family = z14;
        this.is_deposit_chip = z15;
        this.is_withdraw_chip = z16;
        this.is_legend = z17;
        this.is_legend_withdraw = z18;
        this.is_join_peerage = z19;
        this.isAdmin = i23;
        this.interactionReady = i24;
        this.showLevel = i25;
        this.showFamilyLevel = i26;
        this.showPeerage = i27;
        this.showJapanese = i28;
        this.realtimeTranslationEnable = num;
        this.realtimeTranslationType = num2;
        this.realtimeSubtitlesOn = i29;
        this.menus = menus;
        this.username = username;
        this.iswithdraw_promotion = iswithdraw_promotion;
        this.settings = settings;
    }

    @g
    public final String component1() {
        return this.id;
    }

    @g
    public final String component10() {
        return this.province;
    }

    public final int component11() {
        return this.peerage_id;
    }

    @g
    public final String component12() {
        return this.avatar;
    }

    @g
    public final String component13() {
        return this.snap;
    }

    @g
    public final List<String> component14() {
        return this.follow_users;
    }

    @g
    public final String component15() {
        return this.followers_cnt;
    }

    @g
    public final String component16() {
        return this.followees_cnt;
    }

    @g
    public final String component17() {
        return this.emceelevel;
    }

    @g
    public final String component18() {
        return this.familyLevel;
    }

    public final int component19() {
        return this.age;
    }

    public final int component2() {
        return this.sex;
    }

    public final int component20() {
        return this.beanorignal;
    }

    public final int component21() {
        return this.spendcoin;
    }

    @g
    public final String component22() {
        return this.broadcasting;
    }

    @g
    public final String component23() {
        return this.curroomnum;
    }

    @g
    public final String component24() {
        return this.toy_enabled;
    }

    @g
    public final String component25() {
        return this.toy_status;
    }

    @g
    public final String component26() {
        return this.approveid;
    }

    public final int component27() {
        return this.approvetype;
    }

    public final int component28() {
        return this.is_attention;
    }

    public final int component29() {
        return this.isHit;
    }

    @g
    public final String component3() {
        return this.intro;
    }

    @g
    public final String component30() {
        return this.name_card;
    }

    public final int component31() {
        return this.lob_no;
    }

    @g
    public final String component32() {
        return this.mysteryId;
    }

    public final int component33() {
        return this.isMystery;
    }

    public final boolean component34() {
        return this.isGuest;
    }

    public final boolean component35() {
        return this.isanchor;
    }

    public final boolean component36() {
        return this.iswithdraw;
    }

    public final boolean component37() {
        return this.is_lounge_vip;
    }

    public final int component38() {
        return this.is_subscribe_notify;
    }

    public final int component39() {
        return this.is_single_conversation;
    }

    @g
    public final String component4() {
        return this.nickname;
    }

    public final int component40() {
        return this.is_group_conversation;
    }

    public final int component41() {
        return this.is_im;
    }

    public final boolean component42() {
        return this.is_anchor_rank;
    }

    public final boolean component43() {
        return this.is_family;
    }

    public final boolean component44() {
        return this.is_deposit_chip;
    }

    public final boolean component45() {
        return this.is_withdraw_chip;
    }

    public final boolean component46() {
        return this.is_legend;
    }

    public final boolean component47() {
        return this.is_legend_withdraw;
    }

    public final boolean component48() {
        return this.is_join_peerage;
    }

    public final int component49() {
        return this.isAdmin;
    }

    @g
    public final String component5() {
        return this.city;
    }

    public final int component50() {
        return this.interactionReady;
    }

    public final int component51() {
        return this.showLevel;
    }

    public final int component52() {
        return this.showFamilyLevel;
    }

    public final int component53() {
        return this.showPeerage;
    }

    public final int component54() {
        return this.showJapanese;
    }

    @h
    public final Integer component55() {
        return this.realtimeTranslationEnable;
    }

    @h
    public final Integer component56() {
        return this.realtimeTranslationType;
    }

    public final int component57() {
        return this.realtimeSubtitlesOn;
    }

    @g
    public final List<MenuBean> component58() {
        return this.menus;
    }

    @g
    public final String component59() {
        return this.username;
    }

    @g
    public final String component6() {
        return this.avatartime;
    }

    @g
    public final String component60() {
        return this.iswithdraw_promotion;
    }

    @g
    public final List<SettingsBean> component61() {
        return this.settings;
    }

    @g
    public final String component7() {
        return this.birthday;
    }

    @g
    public final String component8() {
        return this.professional;
    }

    @g
    public final String component9() {
        return this.emotion;
    }

    @g
    public final UserBean copy(@g String id, int i4, @g String intro, @g String nickname, @g String city, @g String avatartime, @g String birthday, @g String professional, @g String emotion, @g String province, int i10, @g String avatar, @g String snap, @g List<String> follow_users, @g String followers_cnt, @g String followees_cnt, @g String emceelevel, @g String familyLevel, int i11, int i12, int i13, @g String broadcasting, @g String curroomnum, @g String toy_enabled, @g String toy_status, @g String approveid, int i14, int i15, int i16, @g String name_card, int i17, @g String mysteryId, int i18, boolean z9, boolean z10, boolean z11, boolean z12, int i19, int i20, int i21, int i22, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i23, int i24, int i25, int i26, int i27, int i28, @h Integer num, @h Integer num2, int i29, @g List<MenuBean> menus, @g String username, @g String iswithdraw_promotion, @g List<SettingsBean> settings) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(intro, "intro");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(avatartime, "avatartime");
        Intrinsics.checkNotNullParameter(birthday, "birthday");
        Intrinsics.checkNotNullParameter(professional, "professional");
        Intrinsics.checkNotNullParameter(emotion, "emotion");
        Intrinsics.checkNotNullParameter(province, "province");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(snap, "snap");
        Intrinsics.checkNotNullParameter(follow_users, "follow_users");
        Intrinsics.checkNotNullParameter(followers_cnt, "followers_cnt");
        Intrinsics.checkNotNullParameter(followees_cnt, "followees_cnt");
        Intrinsics.checkNotNullParameter(emceelevel, "emceelevel");
        Intrinsics.checkNotNullParameter(familyLevel, "familyLevel");
        Intrinsics.checkNotNullParameter(broadcasting, "broadcasting");
        Intrinsics.checkNotNullParameter(curroomnum, "curroomnum");
        Intrinsics.checkNotNullParameter(toy_enabled, "toy_enabled");
        Intrinsics.checkNotNullParameter(toy_status, "toy_status");
        Intrinsics.checkNotNullParameter(approveid, "approveid");
        Intrinsics.checkNotNullParameter(name_card, "name_card");
        Intrinsics.checkNotNullParameter(mysteryId, "mysteryId");
        Intrinsics.checkNotNullParameter(menus, "menus");
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(iswithdraw_promotion, "iswithdraw_promotion");
        Intrinsics.checkNotNullParameter(settings, "settings");
        return new UserBean(id, i4, intro, nickname, city, avatartime, birthday, professional, emotion, province, i10, avatar, snap, follow_users, followers_cnt, followees_cnt, emceelevel, familyLevel, i11, i12, i13, broadcasting, curroomnum, toy_enabled, toy_status, approveid, i14, i15, i16, name_card, i17, mysteryId, i18, z9, z10, z11, z12, i19, i20, i21, i22, z13, z14, z15, z16, z17, z18, z19, i23, i24, i25, i26, i27, i28, num, num2, i29, menus, username, iswithdraw_promotion, settings);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserBean) {
            UserBean userBean = (UserBean) obj;
            return Intrinsics.areEqual(this.id, userBean.id) && this.sex == userBean.sex && Intrinsics.areEqual(this.intro, userBean.intro) && Intrinsics.areEqual(this.nickname, userBean.nickname) && Intrinsics.areEqual(this.city, userBean.city) && Intrinsics.areEqual(this.avatartime, userBean.avatartime) && Intrinsics.areEqual(this.birthday, userBean.birthday) && Intrinsics.areEqual(this.professional, userBean.professional) && Intrinsics.areEqual(this.emotion, userBean.emotion) && Intrinsics.areEqual(this.province, userBean.province) && this.peerage_id == userBean.peerage_id && Intrinsics.areEqual(this.avatar, userBean.avatar) && Intrinsics.areEqual(this.snap, userBean.snap) && Intrinsics.areEqual(this.follow_users, userBean.follow_users) && Intrinsics.areEqual(this.followers_cnt, userBean.followers_cnt) && Intrinsics.areEqual(this.followees_cnt, userBean.followees_cnt) && Intrinsics.areEqual(this.emceelevel, userBean.emceelevel) && Intrinsics.areEqual(this.familyLevel, userBean.familyLevel) && this.age == userBean.age && this.beanorignal == userBean.beanorignal && this.spendcoin == userBean.spendcoin && Intrinsics.areEqual(this.broadcasting, userBean.broadcasting) && Intrinsics.areEqual(this.curroomnum, userBean.curroomnum) && Intrinsics.areEqual(this.toy_enabled, userBean.toy_enabled) && Intrinsics.areEqual(this.toy_status, userBean.toy_status) && Intrinsics.areEqual(this.approveid, userBean.approveid) && this.approvetype == userBean.approvetype && this.is_attention == userBean.is_attention && this.isHit == userBean.isHit && Intrinsics.areEqual(this.name_card, userBean.name_card) && this.lob_no == userBean.lob_no && Intrinsics.areEqual(this.mysteryId, userBean.mysteryId) && this.isMystery == userBean.isMystery && this.isGuest == userBean.isGuest && this.isanchor == userBean.isanchor && this.iswithdraw == userBean.iswithdraw && this.is_lounge_vip == userBean.is_lounge_vip && this.is_subscribe_notify == userBean.is_subscribe_notify && this.is_single_conversation == userBean.is_single_conversation && this.is_group_conversation == userBean.is_group_conversation && this.is_im == userBean.is_im && this.is_anchor_rank == userBean.is_anchor_rank && this.is_family == userBean.is_family && this.is_deposit_chip == userBean.is_deposit_chip && this.is_withdraw_chip == userBean.is_withdraw_chip && this.is_legend == userBean.is_legend && this.is_legend_withdraw == userBean.is_legend_withdraw && this.is_join_peerage == userBean.is_join_peerage && this.isAdmin == userBean.isAdmin && this.interactionReady == userBean.interactionReady && this.showLevel == userBean.showLevel && this.showFamilyLevel == userBean.showFamilyLevel && this.showPeerage == userBean.showPeerage && this.showJapanese == userBean.showJapanese && Intrinsics.areEqual(this.realtimeTranslationEnable, userBean.realtimeTranslationEnable) && Intrinsics.areEqual(this.realtimeTranslationType, userBean.realtimeTranslationType) && this.realtimeSubtitlesOn == userBean.realtimeSubtitlesOn && Intrinsics.areEqual(this.menus, userBean.menus) && Intrinsics.areEqual(this.username, userBean.username) && Intrinsics.areEqual(this.iswithdraw_promotion, userBean.iswithdraw_promotion) && Intrinsics.areEqual(this.settings, userBean.settings);
        }
        return false;
    }

    public final int getAge() {
        return this.age;
    }

    @g
    public final String getApproveid() {
        return this.approveid;
    }

    public final int getApprovetype() {
        return this.approvetype;
    }

    @g
    public final String getAvatar() {
        return this.avatar;
    }

    @g
    public final String getAvatartime() {
        return this.avatartime;
    }

    public final int getBeanorignal() {
        return this.beanorignal;
    }

    @g
    public final String getBirthday() {
        return this.birthday;
    }

    @g
    public final String getBroadcasting() {
        return this.broadcasting;
    }

    @g
    public final String getCity() {
        return this.city;
    }

    @g
    public final String getCurroomnum() {
        return this.curroomnum;
    }

    @g
    public final String getEmceelevel() {
        return this.emceelevel;
    }

    @g
    public final String getEmotion() {
        return this.emotion;
    }

    @g
    public final String getFamilyLevel() {
        return this.familyLevel;
    }

    @g
    public final List<String> getFollow_users() {
        return this.follow_users;
    }

    @g
    public final String getFollowees_cnt() {
        return this.followees_cnt;
    }

    @g
    public final String getFollowers_cnt() {
        return this.followers_cnt;
    }

    @g
    public final String getId() {
        return this.id;
    }

    public final int getInteractionReady() {
        return this.interactionReady;
    }

    @g
    public final String getIntro() {
        return this.intro;
    }

    public final boolean getIsanchor() {
        return this.isanchor;
    }

    public final boolean getIswithdraw() {
        return this.iswithdraw;
    }

    @g
    public final String getIswithdraw_promotion() {
        return this.iswithdraw_promotion;
    }

    public final int getLob_no() {
        return this.lob_no;
    }

    @g
    public final List<MenuBean> getMenus() {
        return this.menus;
    }

    @g
    public final String getMysteryId() {
        return this.mysteryId;
    }

    @g
    public final String getName_card() {
        return this.name_card;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    public final int getPeerage_id() {
        return this.peerage_id;
    }

    @g
    public final String getProfessional() {
        return this.professional;
    }

    @g
    public final String getProvince() {
        return this.province;
    }

    public final int getRealtimeSubtitlesOn() {
        return this.realtimeSubtitlesOn;
    }

    @h
    public final Integer getRealtimeTranslationEnable() {
        return this.realtimeTranslationEnable;
    }

    @h
    public final Integer getRealtimeTranslationType() {
        return this.realtimeTranslationType;
    }

    @g
    public final List<SettingsBean> getSettings() {
        return this.settings;
    }

    public final int getSex() {
        return this.sex;
    }

    public final int getShowFamilyLevel() {
        return this.showFamilyLevel;
    }

    public final int getShowJapanese() {
        return this.showJapanese;
    }

    public final int getShowLevel() {
        return this.showLevel;
    }

    public final int getShowPeerage() {
        return this.showPeerage;
    }

    @g
    public final String getSnap() {
        return this.snap;
    }

    public final int getSpendcoin() {
        return this.spendcoin;
    }

    @g
    public final String getToy_enabled() {
        return this.toy_enabled;
    }

    @g
    public final String getToy_status() {
        return this.toy_status;
    }

    @g
    public final String getUsername() {
        return this.username;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.sex) * 31) + this.intro.hashCode()) * 31) + this.nickname.hashCode()) * 31) + this.city.hashCode()) * 31) + this.avatartime.hashCode()) * 31) + this.birthday.hashCode()) * 31) + this.professional.hashCode()) * 31) + this.emotion.hashCode()) * 31) + this.province.hashCode()) * 31) + this.peerage_id) * 31) + this.avatar.hashCode()) * 31) + this.snap.hashCode()) * 31) + this.follow_users.hashCode()) * 31) + this.followers_cnt.hashCode()) * 31) + this.followees_cnt.hashCode()) * 31) + this.emceelevel.hashCode()) * 31) + this.familyLevel.hashCode()) * 31) + this.age) * 31) + this.beanorignal) * 31) + this.spendcoin) * 31) + this.broadcasting.hashCode()) * 31) + this.curroomnum.hashCode()) * 31) + this.toy_enabled.hashCode()) * 31) + this.toy_status.hashCode()) * 31) + this.approveid.hashCode()) * 31) + this.approvetype) * 31) + this.is_attention) * 31) + this.isHit) * 31) + this.name_card.hashCode()) * 31) + this.lob_no) * 31) + this.mysteryId.hashCode()) * 31) + this.isMystery) * 31;
        boolean z9 = this.isGuest;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode + i4) * 31;
        boolean z10 = this.isanchor;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int i12 = (i10 + i11) * 31;
        boolean z11 = this.iswithdraw;
        int i13 = z11;
        if (z11 != 0) {
            i13 = 1;
        }
        int i14 = (i12 + i13) * 31;
        boolean z12 = this.is_lounge_vip;
        int i15 = z12;
        if (z12 != 0) {
            i15 = 1;
        }
        int i16 = (((((((((i14 + i15) * 31) + this.is_subscribe_notify) * 31) + this.is_single_conversation) * 31) + this.is_group_conversation) * 31) + this.is_im) * 31;
        boolean z13 = this.is_anchor_rank;
        int i17 = z13;
        if (z13 != 0) {
            i17 = 1;
        }
        int i18 = (i16 + i17) * 31;
        boolean z14 = this.is_family;
        int i19 = z14;
        if (z14 != 0) {
            i19 = 1;
        }
        int i20 = (i18 + i19) * 31;
        boolean z15 = this.is_deposit_chip;
        int i21 = z15;
        if (z15 != 0) {
            i21 = 1;
        }
        int i22 = (i20 + i21) * 31;
        boolean z16 = this.is_withdraw_chip;
        int i23 = z16;
        if (z16 != 0) {
            i23 = 1;
        }
        int i24 = (i22 + i23) * 31;
        boolean z17 = this.is_legend;
        int i25 = z17;
        if (z17 != 0) {
            i25 = 1;
        }
        int i26 = (i24 + i25) * 31;
        boolean z18 = this.is_legend_withdraw;
        int i27 = z18;
        if (z18 != 0) {
            i27 = 1;
        }
        int i28 = (i26 + i27) * 31;
        boolean z19 = this.is_join_peerage;
        int i29 = (((((((((((((i28 + (z19 ? 1 : z19 ? 1 : 0)) * 31) + this.isAdmin) * 31) + this.interactionReady) * 31) + this.showLevel) * 31) + this.showFamilyLevel) * 31) + this.showPeerage) * 31) + this.showJapanese) * 31;
        Integer num = this.realtimeTranslationEnable;
        int hashCode2 = (i29 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.realtimeTranslationType;
        return ((((((((((hashCode2 + (num2 != null ? num2.hashCode() : 0)) * 31) + this.realtimeSubtitlesOn) * 31) + this.menus.hashCode()) * 31) + this.username.hashCode()) * 31) + this.iswithdraw_promotion.hashCode()) * 31) + this.settings.hashCode();
    }

    public final int isAdmin() {
        return this.isAdmin;
    }

    public final boolean isGuest() {
        return this.isGuest;
    }

    public final int isHit() {
        return this.isHit;
    }

    public final int isMystery() {
        return this.isMystery;
    }

    public final boolean is_anchor_rank() {
        return this.is_anchor_rank;
    }

    public final int is_attention() {
        return this.is_attention;
    }

    public final boolean is_deposit_chip() {
        return this.is_deposit_chip;
    }

    public final boolean is_family() {
        return this.is_family;
    }

    public final int is_group_conversation() {
        return this.is_group_conversation;
    }

    public final int is_im() {
        return this.is_im;
    }

    public final boolean is_join_peerage() {
        return this.is_join_peerage;
    }

    public final boolean is_legend() {
        return this.is_legend;
    }

    public final boolean is_legend_withdraw() {
        return this.is_legend_withdraw;
    }

    public final boolean is_lounge_vip() {
        return this.is_lounge_vip;
    }

    public final int is_single_conversation() {
        return this.is_single_conversation;
    }

    public final int is_subscribe_notify() {
        return this.is_subscribe_notify;
    }

    public final boolean is_withdraw_chip() {
        return this.is_withdraw_chip;
    }

    @g
    public String toString() {
        return "UserBean(id=" + this.id + ", sex=" + this.sex + ", intro=" + this.intro + ", nickname=" + this.nickname + ", city=" + this.city + ", avatartime=" + this.avatartime + ", birthday=" + this.birthday + ", professional=" + this.professional + ", emotion=" + this.emotion + ", province=" + this.province + ", peerage_id=" + this.peerage_id + ", avatar=" + this.avatar + ", snap=" + this.snap + ", follow_users=" + this.follow_users + ", followers_cnt=" + this.followers_cnt + ", followees_cnt=" + this.followees_cnt + ", emceelevel=" + this.emceelevel + ", familyLevel=" + this.familyLevel + ", age=" + this.age + ", beanorignal=" + this.beanorignal + ", spendcoin=" + this.spendcoin + ", broadcasting=" + this.broadcasting + ", curroomnum=" + this.curroomnum + ", toy_enabled=" + this.toy_enabled + ", toy_status=" + this.toy_status + ", approveid=" + this.approveid + ", approvetype=" + this.approvetype + ", is_attention=" + this.is_attention + ", isHit=" + this.isHit + ", name_card=" + this.name_card + ", lob_no=" + this.lob_no + ", mysteryId=" + this.mysteryId + ", isMystery=" + this.isMystery + ", isGuest=" + this.isGuest + ", isanchor=" + this.isanchor + ", iswithdraw=" + this.iswithdraw + ", is_lounge_vip=" + this.is_lounge_vip + ", is_subscribe_notify=" + this.is_subscribe_notify + ", is_single_conversation=" + this.is_single_conversation + ", is_group_conversation=" + this.is_group_conversation + ", is_im=" + this.is_im + ", is_anchor_rank=" + this.is_anchor_rank + ", is_family=" + this.is_family + ", is_deposit_chip=" + this.is_deposit_chip + ", is_withdraw_chip=" + this.is_withdraw_chip + ", is_legend=" + this.is_legend + ", is_legend_withdraw=" + this.is_legend_withdraw + ", is_join_peerage=" + this.is_join_peerage + ", isAdmin=" + this.isAdmin + ", interactionReady=" + this.interactionReady + ", showLevel=" + this.showLevel + ", showFamilyLevel=" + this.showFamilyLevel + ", showPeerage=" + this.showPeerage + ", showJapanese=" + this.showJapanese + ", realtimeTranslationEnable=" + this.realtimeTranslationEnable + ", realtimeTranslationType=" + this.realtimeTranslationType + ", realtimeSubtitlesOn=" + this.realtimeSubtitlesOn + ", menus=" + this.menus + ", username=" + this.username + ", iswithdraw_promotion=" + this.iswithdraw_promotion + ", settings=" + this.settings + ')';
    }

    /* compiled from: UserBean.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JI\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000f¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean$MenuBean;", "", MessageBundle.TITLE_ENTRY, "", "url", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "hideNavBar", "", n.f52152c, "icon", "(Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ZZLjava/lang/String;)V", "getHideNavBar", "()Z", "getIcon", "()Ljava/lang/String;", "getSpa", "getTarget", "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "getTitle", "getUrl", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class MenuBean {
        private final boolean hideNavBar;
        @h
        private final String icon;
        private final boolean spa;
        @g
        private final UrlTarget target;
        @g
        private final String title;
        @h
        private final String url;

        public MenuBean(@g String title, @h String str, @g UrlTarget target, boolean z9, boolean z10, @h String str2) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(target, "target");
            this.title = title;
            this.url = str;
            this.target = target;
            this.hideNavBar = z9;
            this.spa = z10;
            this.icon = str2;
        }

        public static /* synthetic */ MenuBean copy$default(MenuBean menuBean, String str, String str2, UrlTarget urlTarget, boolean z9, boolean z10, String str3, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = menuBean.title;
            }
            if ((i4 & 2) != 0) {
                str2 = menuBean.url;
            }
            String str4 = str2;
            if ((i4 & 4) != 0) {
                urlTarget = menuBean.target;
            }
            UrlTarget urlTarget2 = urlTarget;
            if ((i4 & 8) != 0) {
                z9 = menuBean.hideNavBar;
            }
            boolean z11 = z9;
            if ((i4 & 16) != 0) {
                z10 = menuBean.spa;
            }
            boolean z12 = z10;
            if ((i4 & 32) != 0) {
                str3 = menuBean.icon;
            }
            return menuBean.copy(str, str4, urlTarget2, z11, z12, str3);
        }

        @g
        public final String component1() {
            return this.title;
        }

        @h
        public final String component2() {
            return this.url;
        }

        @g
        public final UrlTarget component3() {
            return this.target;
        }

        public final boolean component4() {
            return this.hideNavBar;
        }

        public final boolean component5() {
            return this.spa;
        }

        @h
        public final String component6() {
            return this.icon;
        }

        @g
        public final MenuBean copy(@g String title, @h String str, @g UrlTarget target, boolean z9, boolean z10, @h String str2) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(target, "target");
            return new MenuBean(title, str, target, z9, z10, str2);
        }

        public boolean equals(@h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MenuBean) {
                MenuBean menuBean = (MenuBean) obj;
                return Intrinsics.areEqual(this.title, menuBean.title) && Intrinsics.areEqual(this.url, menuBean.url) && this.target == menuBean.target && this.hideNavBar == menuBean.hideNavBar && this.spa == menuBean.spa && Intrinsics.areEqual(this.icon, menuBean.icon);
            }
            return false;
        }

        public final boolean getHideNavBar() {
            return this.hideNavBar;
        }

        @h
        public final String getIcon() {
            return this.icon;
        }

        public final boolean getSpa() {
            return this.spa;
        }

        @g
        public final UrlTarget getTarget() {
            return this.target;
        }

        @g
        public final String getTitle() {
            return this.title;
        }

        @h
        public final String getUrl() {
            return this.url;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = this.title.hashCode() * 31;
            String str = this.url;
            int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.target.hashCode()) * 31;
            boolean z9 = this.hideNavBar;
            int i4 = z9;
            if (z9 != 0) {
                i4 = 1;
            }
            int i10 = (hashCode2 + i4) * 31;
            boolean z10 = this.spa;
            int i11 = (i10 + (z10 ? 1 : z10 ? 1 : 0)) * 31;
            String str2 = this.icon;
            return i11 + (str2 != null ? str2.hashCode() : 0);
        }

        @g
        public String toString() {
            return "MenuBean(title=" + this.title + ", url=" + this.url + ", target=" + this.target + ", hideNavBar=" + this.hideNavBar + ", spa=" + this.spa + ", icon=" + this.icon + ')';
        }

        public /* synthetic */ MenuBean(String str, String str2, UrlTarget urlTarget, boolean z9, boolean z10, String str3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? UrlTarget.InApp : urlTarget, (i4 & 8) != 0 ? false : z9, (i4 & 16) == 0 ? z10 : false, (i4 & 32) == 0 ? str3 : null);
        }
    }

    public /* synthetic */ UserBean(String str, int i4, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i10, String str10, String str11, List list, String str12, String str13, String str14, String str15, int i11, int i12, int i13, String str16, String str17, String str18, String str19, String str20, int i14, int i15, int i16, String str21, int i17, String str22, int i18, boolean z9, boolean z10, boolean z11, boolean z12, int i19, int i20, int i21, int i22, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, int i23, int i24, int i25, int i26, int i27, int i28, Integer num, Integer num2, int i29, List list2, String str23, String str24, List list3, int i30, int i31, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i4, str2, str3, str4, str5, str6, str7, (i30 & 256) != 0 ? "0" : str8, str9, (i30 & 1024) != 0 ? 0 : i10, str10, str11, list, str12, str13, str14, str15, (i30 & 262144) != 0 ? 0 : i11, (i30 & 524288) != 0 ? 0 : i12, (i30 & 1048576) != 0 ? 0 : i13, str16, str17, str18, str19, str20, (67108864 & i30) != 0 ? 0 : i14, (134217728 & i30) != 0 ? 0 : i15, (268435456 & i30) != 0 ? 0 : i16, (536870912 & i30) != 0 ? "" : str21, (i30 & 1073741824) != 0 ? 0 : i17, str22, (i31 & 1) != 0 ? 0 : i18, z9, (i31 & 4) != 0 ? false : z10, (i31 & 8) != 0 ? false : z11, (i31 & 16) != 0 ? false : z12, (i31 & 32) != 0 ? 0 : i19, (i31 & 64) != 0 ? 0 : i20, (i31 & 128) != 0 ? 0 : i21, (i31 & 256) != 0 ? 0 : i22, (i31 & 512) != 0 ? false : z13, (i31 & 1024) != 0 ? false : z14, (i31 & 2048) != 0 ? false : z15, (i31 & 4096) != 0 ? false : z16, (i31 & 8192) != 0 ? false : z17, (i31 & 16384) != 0 ? false : z18, (32768 & i31) != 0 ? false : z19, (65536 & i31) != 0 ? 0 : i23, (131072 & i31) != 0 ? 0 : i24, (i31 & 262144) != 0 ? 0 : i25, (i31 & 524288) != 0 ? 0 : i26, (i31 & 1048576) != 0 ? 0 : i27, (2097152 & i31) != 0 ? 0 : i28, (4194304 & i31) != 0 ? 0 : num, (8388608 & i31) != 0 ? 0 : num2, (16777216 & i31) != 0 ? 0 : i29, list2, str23, str24, list3);
    }
}
