	.file	"ee_tc_intvec.c"
.section .text,"ax",@progbits
.Ltext0:
#APP
	
  .section .inttab_cpu0, "ax", @progbits
  .globl __INTTAB0
__INTTAB0:
	  .skip 0x20
	.globl osEE_tc_isr_dummy_entry_1
	osEE_tc_isr_dummy_entry_1:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_2
	osEE_tc_isr_dummy_entry_2:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_3
	osEE_tc_isr_dummy_entry_3:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_4
	osEE_tc_isr_dummy_entry_4:
	j .
	.align  5
	.globl osEE_tc_isr2_entry_5
	osEE_tc_isr2_entry_5:
	svlcx
	mov %d4, 3
	j osEE_tc_isr2_wrapper
	.align 5
	.globl osEE_tc_isr2_entry_6
	osEE_tc_isr2_entry_6:
	svlcx
	mov %d4, 4
	j osEE_tc_isr2_wrapper
	.align 5
	.globl osEE_tc_isr_dummy_entry_7
	osEE_tc_isr_dummy_entry_7:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_8
	osEE_tc_isr_dummy_entry_8:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_9
	osEE_tc_isr_dummy_entry_9:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_10
	osEE_tc_isr_dummy_entry_10:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_11
	osEE_tc_isr_dummy_entry_11:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_12
	osEE_tc_isr_dummy_entry_12:
	j .
	.align  5
	.globl osEE_tc_isr2_entry_13
	osEE_tc_isr2_entry_13:
	svlcx
	mov %d4, 1
	j osEE_tc_isr2_wrapper
	.align 5
	.globl osEE_tc_isr2_entry_14
	osEE_tc_isr2_entry_14:
	svlcx
	mov %d4, 2
	j osEE_tc_isr2_wrapper
	.align 5
	.globl osEE_tc_isr_dummy_entry_15
	osEE_tc_isr_dummy_entry_15:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_16
	osEE_tc_isr_dummy_entry_16:
	j .
	.align  5
	.globl osEE_tc_isr2_entry_17
	osEE_tc_isr2_entry_17:
	svlcx
	mov %d4, 0
	j osEE_tc_isr2_wrapper
	.align 5
	.globl osEE_tc_isr_dummy_entry_18
	osEE_tc_isr_dummy_entry_18:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_19
	osEE_tc_isr_dummy_entry_19:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_20
	osEE_tc_isr_dummy_entry_20:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_21
	osEE_tc_isr_dummy_entry_21:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_22
	osEE_tc_isr_dummy_entry_22:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_23
	osEE_tc_isr_dummy_entry_23:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_24
	osEE_tc_isr_dummy_entry_24:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_25
	osEE_tc_isr_dummy_entry_25:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_26
	osEE_tc_isr_dummy_entry_26:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_27
	osEE_tc_isr_dummy_entry_27:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_28
	osEE_tc_isr_dummy_entry_28:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_29
	osEE_tc_isr_dummy_entry_29:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_30
	osEE_tc_isr_dummy_entry_30:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_31
	osEE_tc_isr_dummy_entry_31:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_32
	osEE_tc_isr_dummy_entry_32:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_33
	osEE_tc_isr_dummy_entry_33:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_34
	osEE_tc_isr_dummy_entry_34:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_35
	osEE_tc_isr_dummy_entry_35:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_36
	osEE_tc_isr_dummy_entry_36:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_37
	osEE_tc_isr_dummy_entry_37:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_38
	osEE_tc_isr_dummy_entry_38:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_39
	osEE_tc_isr_dummy_entry_39:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_40
	osEE_tc_isr_dummy_entry_40:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_41
	osEE_tc_isr_dummy_entry_41:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_42
	osEE_tc_isr_dummy_entry_42:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_43
	osEE_tc_isr_dummy_entry_43:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_44
	osEE_tc_isr_dummy_entry_44:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_45
	osEE_tc_isr_dummy_entry_45:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_46
	osEE_tc_isr_dummy_entry_46:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_47
	osEE_tc_isr_dummy_entry_47:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_48
	osEE_tc_isr_dummy_entry_48:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_49
	osEE_tc_isr_dummy_entry_49:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_50
	osEE_tc_isr_dummy_entry_50:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_51
	osEE_tc_isr_dummy_entry_51:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_52
	osEE_tc_isr_dummy_entry_52:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_53
	osEE_tc_isr_dummy_entry_53:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_54
	osEE_tc_isr_dummy_entry_54:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_55
	osEE_tc_isr_dummy_entry_55:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_56
	osEE_tc_isr_dummy_entry_56:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_57
	osEE_tc_isr_dummy_entry_57:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_58
	osEE_tc_isr_dummy_entry_58:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_59
	osEE_tc_isr_dummy_entry_59:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_60
	osEE_tc_isr_dummy_entry_60:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_61
	osEE_tc_isr_dummy_entry_61:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_62
	osEE_tc_isr_dummy_entry_62:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_63
	osEE_tc_isr_dummy_entry_63:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_64
	osEE_tc_isr_dummy_entry_64:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_65
	osEE_tc_isr_dummy_entry_65:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_66
	osEE_tc_isr_dummy_entry_66:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_67
	osEE_tc_isr_dummy_entry_67:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_68
	osEE_tc_isr_dummy_entry_68:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_69
	osEE_tc_isr_dummy_entry_69:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_70
	osEE_tc_isr_dummy_entry_70:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_71
	osEE_tc_isr_dummy_entry_71:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_72
	osEE_tc_isr_dummy_entry_72:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_73
	osEE_tc_isr_dummy_entry_73:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_74
	osEE_tc_isr_dummy_entry_74:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_75
	osEE_tc_isr_dummy_entry_75:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_76
	osEE_tc_isr_dummy_entry_76:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_77
	osEE_tc_isr_dummy_entry_77:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_78
	osEE_tc_isr_dummy_entry_78:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_79
	osEE_tc_isr_dummy_entry_79:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_80
	osEE_tc_isr_dummy_entry_80:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_81
	osEE_tc_isr_dummy_entry_81:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_82
	osEE_tc_isr_dummy_entry_82:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_83
	osEE_tc_isr_dummy_entry_83:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_84
	osEE_tc_isr_dummy_entry_84:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_85
	osEE_tc_isr_dummy_entry_85:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_86
	osEE_tc_isr_dummy_entry_86:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_87
	osEE_tc_isr_dummy_entry_87:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_88
	osEE_tc_isr_dummy_entry_88:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_89
	osEE_tc_isr_dummy_entry_89:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_90
	osEE_tc_isr_dummy_entry_90:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_91
	osEE_tc_isr_dummy_entry_91:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_92
	osEE_tc_isr_dummy_entry_92:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_93
	osEE_tc_isr_dummy_entry_93:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_94
	osEE_tc_isr_dummy_entry_94:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_95
	osEE_tc_isr_dummy_entry_95:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_96
	osEE_tc_isr_dummy_entry_96:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_97
	osEE_tc_isr_dummy_entry_97:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_98
	osEE_tc_isr_dummy_entry_98:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_99
	osEE_tc_isr_dummy_entry_99:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_100
	osEE_tc_isr_dummy_entry_100:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_101
	osEE_tc_isr_dummy_entry_101:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_102
	osEE_tc_isr_dummy_entry_102:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_103
	osEE_tc_isr_dummy_entry_103:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_104
	osEE_tc_isr_dummy_entry_104:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_105
	osEE_tc_isr_dummy_entry_105:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_106
	osEE_tc_isr_dummy_entry_106:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_107
	osEE_tc_isr_dummy_entry_107:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_108
	osEE_tc_isr_dummy_entry_108:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_109
	osEE_tc_isr_dummy_entry_109:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_110
	osEE_tc_isr_dummy_entry_110:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_111
	osEE_tc_isr_dummy_entry_111:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_112
	osEE_tc_isr_dummy_entry_112:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_113
	osEE_tc_isr_dummy_entry_113:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_114
	osEE_tc_isr_dummy_entry_114:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_115
	osEE_tc_isr_dummy_entry_115:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_116
	osEE_tc_isr_dummy_entry_116:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_117
	osEE_tc_isr_dummy_entry_117:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_118
	osEE_tc_isr_dummy_entry_118:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_119
	osEE_tc_isr_dummy_entry_119:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_120
	osEE_tc_isr_dummy_entry_120:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_121
	osEE_tc_isr_dummy_entry_121:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_122
	osEE_tc_isr_dummy_entry_122:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_123
	osEE_tc_isr_dummy_entry_123:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_124
	osEE_tc_isr_dummy_entry_124:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_125
	osEE_tc_isr_dummy_entry_125:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_126
	osEE_tc_isr_dummy_entry_126:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_127
	osEE_tc_isr_dummy_entry_127:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_128
	osEE_tc_isr_dummy_entry_128:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_129
	osEE_tc_isr_dummy_entry_129:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_130
	osEE_tc_isr_dummy_entry_130:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_131
	osEE_tc_isr_dummy_entry_131:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_132
	osEE_tc_isr_dummy_entry_132:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_133
	osEE_tc_isr_dummy_entry_133:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_134
	osEE_tc_isr_dummy_entry_134:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_135
	osEE_tc_isr_dummy_entry_135:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_136
	osEE_tc_isr_dummy_entry_136:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_137
	osEE_tc_isr_dummy_entry_137:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_138
	osEE_tc_isr_dummy_entry_138:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_139
	osEE_tc_isr_dummy_entry_139:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_140
	osEE_tc_isr_dummy_entry_140:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_141
	osEE_tc_isr_dummy_entry_141:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_142
	osEE_tc_isr_dummy_entry_142:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_143
	osEE_tc_isr_dummy_entry_143:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_144
	osEE_tc_isr_dummy_entry_144:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_145
	osEE_tc_isr_dummy_entry_145:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_146
	osEE_tc_isr_dummy_entry_146:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_147
	osEE_tc_isr_dummy_entry_147:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_148
	osEE_tc_isr_dummy_entry_148:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_149
	osEE_tc_isr_dummy_entry_149:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_150
	osEE_tc_isr_dummy_entry_150:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_151
	osEE_tc_isr_dummy_entry_151:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_152
	osEE_tc_isr_dummy_entry_152:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_153
	osEE_tc_isr_dummy_entry_153:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_154
	osEE_tc_isr_dummy_entry_154:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_155
	osEE_tc_isr_dummy_entry_155:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_156
	osEE_tc_isr_dummy_entry_156:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_157
	osEE_tc_isr_dummy_entry_157:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_158
	osEE_tc_isr_dummy_entry_158:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_159
	osEE_tc_isr_dummy_entry_159:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_160
	osEE_tc_isr_dummy_entry_160:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_161
	osEE_tc_isr_dummy_entry_161:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_162
	osEE_tc_isr_dummy_entry_162:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_163
	osEE_tc_isr_dummy_entry_163:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_164
	osEE_tc_isr_dummy_entry_164:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_165
	osEE_tc_isr_dummy_entry_165:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_166
	osEE_tc_isr_dummy_entry_166:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_167
	osEE_tc_isr_dummy_entry_167:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_168
	osEE_tc_isr_dummy_entry_168:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_169
	osEE_tc_isr_dummy_entry_169:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_170
	osEE_tc_isr_dummy_entry_170:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_171
	osEE_tc_isr_dummy_entry_171:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_172
	osEE_tc_isr_dummy_entry_172:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_173
	osEE_tc_isr_dummy_entry_173:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_174
	osEE_tc_isr_dummy_entry_174:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_175
	osEE_tc_isr_dummy_entry_175:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_176
	osEE_tc_isr_dummy_entry_176:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_177
	osEE_tc_isr_dummy_entry_177:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_178
	osEE_tc_isr_dummy_entry_178:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_179
	osEE_tc_isr_dummy_entry_179:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_180
	osEE_tc_isr_dummy_entry_180:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_181
	osEE_tc_isr_dummy_entry_181:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_182
	osEE_tc_isr_dummy_entry_182:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_183
	osEE_tc_isr_dummy_entry_183:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_184
	osEE_tc_isr_dummy_entry_184:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_185
	osEE_tc_isr_dummy_entry_185:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_186
	osEE_tc_isr_dummy_entry_186:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_187
	osEE_tc_isr_dummy_entry_187:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_188
	osEE_tc_isr_dummy_entry_188:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_189
	osEE_tc_isr_dummy_entry_189:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_190
	osEE_tc_isr_dummy_entry_190:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_191
	osEE_tc_isr_dummy_entry_191:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_192
	osEE_tc_isr_dummy_entry_192:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_193
	osEE_tc_isr_dummy_entry_193:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_194
	osEE_tc_isr_dummy_entry_194:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_195
	osEE_tc_isr_dummy_entry_195:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_196
	osEE_tc_isr_dummy_entry_196:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_197
	osEE_tc_isr_dummy_entry_197:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_198
	osEE_tc_isr_dummy_entry_198:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_199
	osEE_tc_isr_dummy_entry_199:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_200
	osEE_tc_isr_dummy_entry_200:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_201
	osEE_tc_isr_dummy_entry_201:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_202
	osEE_tc_isr_dummy_entry_202:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_203
	osEE_tc_isr_dummy_entry_203:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_204
	osEE_tc_isr_dummy_entry_204:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_205
	osEE_tc_isr_dummy_entry_205:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_206
	osEE_tc_isr_dummy_entry_206:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_207
	osEE_tc_isr_dummy_entry_207:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_208
	osEE_tc_isr_dummy_entry_208:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_209
	osEE_tc_isr_dummy_entry_209:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_210
	osEE_tc_isr_dummy_entry_210:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_211
	osEE_tc_isr_dummy_entry_211:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_212
	osEE_tc_isr_dummy_entry_212:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_213
	osEE_tc_isr_dummy_entry_213:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_214
	osEE_tc_isr_dummy_entry_214:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_215
	osEE_tc_isr_dummy_entry_215:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_216
	osEE_tc_isr_dummy_entry_216:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_217
	osEE_tc_isr_dummy_entry_217:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_218
	osEE_tc_isr_dummy_entry_218:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_219
	osEE_tc_isr_dummy_entry_219:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_220
	osEE_tc_isr_dummy_entry_220:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_221
	osEE_tc_isr_dummy_entry_221:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_222
	osEE_tc_isr_dummy_entry_222:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_223
	osEE_tc_isr_dummy_entry_223:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_224
	osEE_tc_isr_dummy_entry_224:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_225
	osEE_tc_isr_dummy_entry_225:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_226
	osEE_tc_isr_dummy_entry_226:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_227
	osEE_tc_isr_dummy_entry_227:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_228
	osEE_tc_isr_dummy_entry_228:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_229
	osEE_tc_isr_dummy_entry_229:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_230
	osEE_tc_isr_dummy_entry_230:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_231
	osEE_tc_isr_dummy_entry_231:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_232
	osEE_tc_isr_dummy_entry_232:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_233
	osEE_tc_isr_dummy_entry_233:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_234
	osEE_tc_isr_dummy_entry_234:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_235
	osEE_tc_isr_dummy_entry_235:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_236
	osEE_tc_isr_dummy_entry_236:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_237
	osEE_tc_isr_dummy_entry_237:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_238
	osEE_tc_isr_dummy_entry_238:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_239
	osEE_tc_isr_dummy_entry_239:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_240
	osEE_tc_isr_dummy_entry_240:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_241
	osEE_tc_isr_dummy_entry_241:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_242
	osEE_tc_isr_dummy_entry_242:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_243
	osEE_tc_isr_dummy_entry_243:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_244
	osEE_tc_isr_dummy_entry_244:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_245
	osEE_tc_isr_dummy_entry_245:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_246
	osEE_tc_isr_dummy_entry_246:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_247
	osEE_tc_isr_dummy_entry_247:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_248
	osEE_tc_isr_dummy_entry_248:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_249
	osEE_tc_isr_dummy_entry_249:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_250
	osEE_tc_isr_dummy_entry_250:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_251
	osEE_tc_isr_dummy_entry_251:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_252
	osEE_tc_isr_dummy_entry_252:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_253
	osEE_tc_isr_dummy_entry_253:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_254
	osEE_tc_isr_dummy_entry_254:
	j .
	.align  5
	.globl osEE_tc_isr_dummy_entry_255
	osEE_tc_isr_dummy_entry_255:
	j .
	.align  5
	.size __INTTAB0, . - __INTTAB0
	.section .text,"ax",@progbits
#NO_APP
	.align 1
	.type	osEE_tc_isr2_wrapper, @function
osEE_tc_isr2_wrapper:
.LFB102:
	.file 1 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_tc_intvec.c"
	.loc 1 17033 0
.LVL0:
	mov.aa	%a14, %SP
.LCFI0:
	.loc 1 17062 0
	call	osEE_activate_isr2
.LVL1:
.LBB6:
.LBB7:
	.file 2 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal.h"
	.loc 2 232 0
#APP
	# 232 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	rslcx
	# 0 "" 2
#NO_APP
.LBE7:
.LBE6:
.LBB8:
.LBB9:
	.loc 2 237 0
#APP
	# 237 "C:\TUNNEL~1\TC275\erika\inc/ee_hal.h" 1
	rfe
	# 0 "" 2
#NO_APP
	ret
.LBE9:
.LBE8:
.LFE102:
	.size	osEE_tc_isr2_wrapper, .-osEE_tc_isr2_wrapper
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB102
	.uaword	.LFE102-.LFB102
	.byte	0x4
	.uaword	.LCFI0-.LFB102
	.byte	0xd
	.uleb128 0x1e
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\tricore\\include\\stdint.h"
	.file 5 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_platform_types.h"
	.file 6 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_hal_internal_types.h"
	.file 7 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_api_types.h"
	.file 8 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_scheduler_types.h"
	.file 9 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_kernel_types.h"
	.file 10 "C:\\TUNNEL~1\\TC275\\erika\\inc/ee_get_kernel_and_core.h"
	.file 11 "C:\\TUNNEL~1\\TC275\\erika\\src\\ee_kernel.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe7a
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9."
	.string	"4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc27xx -g -O1 -fno-common -fshort-enums -fstrict-volatile-bitfields -finline-functions -fzero-initialized-in-bss"
	.byte	0x1
	.string	"C:\\TUNNEL~1\\TC275\\erika\\src\\ee_tc_intvec.c"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x3
	.byte	0xd4
	.uaword	0x169
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_t"
	.byte	0x4
	.byte	0x2a
	.uaword	0x1a3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_t"
	.byte	0x4
	.byte	0x36
	.uaword	0x1d1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x4
	.byte	0x50
	.uaword	0x169
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"OsEE_addr"
	.byte	0x5
	.byte	0x5a
	.uaword	0x243
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.string	"OsEE_reg"
	.byte	0x5
	.byte	0x5b
	.uaword	0x1e7
	.uleb128 0x3
	.string	"OsEE_prio"
	.byte	0x5
	.byte	0x8d
	.uaword	0x194
	.uleb128 0x3
	.string	"OsEE_isr_src_id"
	.byte	0x5
	.byte	0x92
	.uaword	0x1c1
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x74
	.uaword	0x2d3
	.uleb128 0x6
	.string	"pcxo"
	.byte	0x6
	.byte	0x75
	.uaword	0x222
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.string	"pcxs"
	.byte	0x6
	.byte	0x76
	.uaword	0x222
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"ul"
	.byte	0x6
	.byte	0x7b
	.uaword	0x222
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.string	"pie"
	.byte	0x6
	.byte	0x7c
	.uaword	0x222
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.string	"pcpn"
	.byte	0x6
	.byte	0x7d
	.uaword	0x222
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.byte	0x72
	.uaword	0x2f3
	.uleb128 0x8
	.string	"reg"
	.byte	0x6
	.byte	0x73
	.uaword	0x245
	.uleb128 0x8
	.string	"bits"
	.byte	0x6
	.byte	0x82
	.uaword	0x27d
	.byte	0
	.uleb128 0x3
	.string	"OsEE_pcxi"
	.byte	0x6
	.byte	0x83
	.uaword	0x2d3
	.uleb128 0x9
	.string	"OsEE_CTX_tag"
	.byte	0x10
	.byte	0x6
	.byte	0xf3
	.uaword	0x34e
	.uleb128 0xa
	.string	"p_ctx"
	.byte	0x6
	.byte	0xf4
	.uaword	0x34e
	.byte	0
	.uleb128 0xa
	.string	"dummy"
	.byte	0x6
	.byte	0xf5
	.uaword	0x245
	.byte	0x4
	.uleb128 0xa
	.string	"pcxi"
	.byte	0x6
	.byte	0xf6
	.uaword	0x2f3
	.byte	0x8
	.uleb128 0xa
	.string	"ra"
	.byte	0x6
	.byte	0xf7
	.uaword	0x232
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x304
	.uleb128 0x3
	.string	"OsEE_CTX"
	.byte	0x6
	.byte	0xf8
	.uaword	0x304
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0xfb
	.uaword	0x37b
	.uleb128 0xa
	.string	"p_tos"
	.byte	0x6
	.byte	0xfc
	.uaword	0x37b
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x354
	.uleb128 0x3
	.string	"OsEE_SCB"
	.byte	0x6
	.byte	0xfd
	.uaword	0x364
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.uahalf	0x100
	.uaword	0x3be
	.uleb128 0xd
	.string	"p_bos"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x37b
	.byte	0
	.uleb128 0xd
	.string	"stack_size"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x15b
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.string	"OsEE_SDB"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x3cf
	.uleb128 0xf
	.uaword	0x391
	.uleb128 0xc
	.byte	0xc
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x40e
	.uleb128 0xd
	.string	"p_sdb"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x40e
	.byte	0
	.uleb128 0xd
	.string	"p_scb"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x414
	.byte	0x4
	.uleb128 0xd
	.string	"isr2_src"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0x266
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x3be
	.uleb128 0xb
	.byte	0x4
	.uaword	0x381
	.uleb128 0xe
	.string	"OsEE_HDB"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x42b
	.uleb128 0xf
	.uaword	0x3d4
	.uleb128 0x3
	.string	"AppModeType"
	.byte	0x7
	.byte	0x60
	.uaword	0x194
	.uleb128 0x3
	.string	"TaskType"
	.byte	0x7
	.byte	0x78
	.uaword	0x245
	.uleb128 0x3
	.string	"TaskPrio"
	.byte	0x7
	.byte	0xc8
	.uaword	0x255
	.uleb128 0x3
	.string	"TaskActivation"
	.byte	0x7
	.byte	0xf4
	.uaword	0x194
	.uleb128 0xe
	.string	"TaskFunc"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x48a
	.uleb128 0xb
	.byte	0x4
	.uaword	0x490
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x7
	.uahalf	0x145
	.uaword	0x4f9
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_BASIC"
	.sleb128 0
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_EXTENDED"
	.sleb128 1
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_ISR2"
	.sleb128 2
	.uleb128 0x12
	.string	"OSEE_TASK_TYPE_IDLE"
	.sleb128 3
	.byte	0
	.uleb128 0xe
	.string	"OsEE_task_type"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x492
	.uleb128 0xe
	.string	"TaskExecutionType"
	.byte	0x7
	.uahalf	0x157
	.uaword	0x4f9
	.uleb128 0x11
	.byte	0x1
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x5b2
	.uleb128 0x12
	.string	"OSEE_TASK_SUSPENDED"
	.sleb128 0
	.uleb128 0x12
	.string	"OSEE_TASK_READY"
	.sleb128 1
	.uleb128 0x12
	.string	"OSEE_TASK_READY_STACKED"
	.sleb128 2
	.uleb128 0x12
	.string	"OSEE_TASK_WAITING"
	.sleb128 3
	.uleb128 0x12
	.string	"OSEE_TASK_RUNNING"
	.sleb128 4
	.uleb128 0x12
	.string	"OSEE_TASK_CHAINED"
	.sleb128 5
	.byte	0
	.uleb128 0xe
	.string	"OsEE_task_status"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x52a
	.uleb128 0xe
	.string	"TaskStateType"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x5b2
	.uleb128 0xe
	.string	"EventMaskType"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x245
	.uleb128 0xe
	.string	"MemSize"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x15b
	.uleb128 0x11
	.byte	0x1
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x82a
	.uleb128 0x12
	.string	"E_OK"
	.sleb128 0
	.uleb128 0x12
	.string	"E_OS_ACCESS"
	.sleb128 1
	.uleb128 0x12
	.string	"E_OS_CALLEVEL"
	.sleb128 2
	.uleb128 0x12
	.string	"E_OS_ID"
	.sleb128 3
	.uleb128 0x12
	.string	"E_OS_LIMIT"
	.sleb128 4
	.uleb128 0x12
	.string	"E_OS_NOFUNC"
	.sleb128 5
	.uleb128 0x12
	.string	"E_OS_RESOURCE"
	.sleb128 6
	.uleb128 0x12
	.string	"E_OS_STATE"
	.sleb128 7
	.uleb128 0x12
	.string	"E_OS_VALUE"
	.sleb128 8
	.uleb128 0x12
	.string	"E_OS_SERVICEID"
	.sleb128 9
	.uleb128 0x12
	.string	"E_OS_ILLEGAL_ADDRESS"
	.sleb128 10
	.uleb128 0x12
	.string	"E_OS_MISSINGEND"
	.sleb128 11
	.uleb128 0x12
	.string	"E_OS_DISABLEDINT"
	.sleb128 12
	.uleb128 0x12
	.string	"E_OS_STACKFAULT"
	.sleb128 13
	.uleb128 0x12
	.string	"E_OS_PARAM_POINTER"
	.sleb128 14
	.uleb128 0x12
	.string	"E_OS_PROTECTION_MEMORY"
	.sleb128 15
	.uleb128 0x12
	.string	"E_OS_PROTECTION_TIME"
	.sleb128 16
	.uleb128 0x12
	.string	"E_OS_PROTECTION_ARRIVAL"
	.sleb128 17
	.uleb128 0x12
	.string	"E_OS_PROTECTION_LOCKED"
	.sleb128 18
	.uleb128 0x12
	.string	"E_OS_PROTECTION_EXCEPTION"
	.sleb128 19
	.uleb128 0x12
	.string	"E_OS_SPINLOCK"
	.sleb128 20
	.uleb128 0x12
	.string	"E_OS_INTERFERENCE_DEADLOCK"
	.sleb128 21
	.uleb128 0x12
	.string	"E_OS_NESTING_DEADLOCK"
	.sleb128 22
	.uleb128 0x12
	.string	"E_OS_CORE"
	.sleb128 23
	.uleb128 0x12
	.string	"E_OS_SYS_INIT"
	.sleb128 24
	.uleb128 0x12
	.string	"E_OS_SYS_SUSPEND_NESTING_LIMIT"
	.sleb128 25
	.uleb128 0x12
	.string	"E_OS_SYS_TASK"
	.sleb128 26
	.uleb128 0x12
	.string	"E_OS_SYS_STACK"
	.sleb128 27
	.uleb128 0x12
	.string	"E_OS_SYS_ACT"
	.sleb128 28
	.byte	0
	.uleb128 0xe
	.string	"OsEE_status_type"
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x607
	.uleb128 0xe
	.string	"StatusType"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x82a
	.uleb128 0x9
	.string	"OsEE_SN_tag"
	.byte	0x8
	.byte	0x8
	.byte	0x4b
	.uaword	0x888
	.uleb128 0xa
	.string	"p_next"
	.byte	0x8
	.byte	0x4d
	.uaword	0x888
	.byte	0
	.uleb128 0xa
	.string	"p_tdb"
	.byte	0x8
	.byte	0x4f
	.uaword	0x937
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x856
	.uleb128 0x13
	.string	"OsEE_TDB_tag"
	.byte	0x20
	.byte	0x9
	.uahalf	0x108
	.uaword	0x937
	.uleb128 0xd
	.string	"hdb"
	.byte	0x9
	.uahalf	0x10b
	.uaword	0x41a
	.byte	0
	.uleb128 0xd
	.string	"p_tcb"
	.byte	0x9
	.uahalf	0x10e
	.uaword	0xb39
	.byte	0xc
	.uleb128 0xd
	.string	"tid"
	.byte	0x9
	.uahalf	0x110
	.uaword	0x443
	.byte	0x10
	.uleb128 0xd
	.string	"task_type"
	.byte	0x9
	.uahalf	0x112
	.uaword	0x510
	.byte	0x14
	.uleb128 0xd
	.string	"task_func"
	.byte	0x9
	.uahalf	0x114
	.uaword	0x479
	.byte	0x18
	.uleb128 0xd
	.string	"ready_prio"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x453
	.byte	0x1c
	.uleb128 0xd
	.string	"dispatch_prio"
	.byte	0x9
	.uahalf	0x11a
	.uaword	0x453
	.byte	0x1d
	.uleb128 0xd
	.string	"max_num_of_act"
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x463
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x93d
	.uleb128 0xf
	.uaword	0x88e
	.uleb128 0x3
	.string	"OsEE_SN"
	.byte	0x8
	.byte	0x50
	.uaword	0x856
	.uleb128 0x3
	.string	"OsEE_RQ"
	.byte	0x8
	.byte	0xd5
	.uaword	0x960
	.uleb128 0xb
	.byte	0x4
	.uaword	0x942
	.uleb128 0x3
	.string	"OsEE_byte"
	.byte	0x9
	.byte	0x53
	.uaword	0x194
	.uleb128 0x14
	.byte	0x1
	.byte	0x9
	.byte	0x73
	.uaword	0x9de
	.uleb128 0x12
	.string	"OSEE_KERNEL_INITIALIZED"
	.sleb128 0
	.uleb128 0x12
	.string	"OSEE_KERNEL_STARTING"
	.sleb128 1
	.uleb128 0x12
	.string	"OSEE_KERNEL_STARTED"
	.sleb128 2
	.uleb128 0x12
	.string	"OSEE_KERNEL_SHUTDOWN"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"OsEE_kernel_status"
	.byte	0x9
	.byte	0x7d
	.uaword	0x977
	.uleb128 0x5
	.byte	0xc
	.byte	0x9
	.byte	0x90
	.uaword	0xa32
	.uleb128 0xa
	.string	"p_next"
	.byte	0x9
	.byte	0x94
	.uaword	0xa62
	.byte	0
	.uleb128 0xa
	.string	"prev_prio"
	.byte	0x9
	.byte	0x97
	.uaword	0x453
	.byte	0x4
	.uleb128 0xa
	.string	"p_owner"
	.byte	0x9
	.byte	0x9a
	.uaword	0x937
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"OsEE_MDB_tag"
	.byte	0x8
	.byte	0x9
	.byte	0xb5
	.uaword	0xa62
	.uleb128 0xa
	.string	"p_cb"
	.byte	0x9
	.byte	0xb7
	.uaword	0xa7d
	.byte	0
	.uleb128 0xa
	.string	"prio"
	.byte	0x9
	.byte	0xc3
	.uaword	0x453
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xa68
	.uleb128 0xf
	.uaword	0xa32
	.uleb128 0x3
	.string	"OsEE_MCB"
	.byte	0x9
	.byte	0x9b
	.uaword	0x9f8
	.uleb128 0xb
	.byte	0x4
	.uaword	0xa6d
	.uleb128 0x3
	.string	"OsEE_MDB"
	.byte	0x9
	.byte	0xce
	.uaword	0xa68
	.uleb128 0x5
	.byte	0x14
	.byte	0x9
	.byte	0xe0
	.uaword	0xb22
	.uleb128 0xa
	.string	"current_num_of_act"
	.byte	0x9
	.byte	0xe4
	.uaword	0x463
	.byte	0
	.uleb128 0xa
	.string	"current_prio"
	.byte	0x9
	.byte	0xea
	.uaword	0x453
	.byte	0x1
	.uleb128 0xa
	.string	"status"
	.byte	0x9
	.byte	0xec
	.uaword	0x5cb
	.byte	0x2
	.uleb128 0xa
	.string	"p_last_m"
	.byte	0x9
	.byte	0xef
	.uaword	0xb22
	.byte	0x4
	.uleb128 0xa
	.string	"wait_mask"
	.byte	0x9
	.byte	0xf3
	.uaword	0x5e1
	.byte	0x8
	.uleb128 0xa
	.string	"event_mask"
	.byte	0x9
	.byte	0xf5
	.uaword	0x5e1
	.byte	0xc
	.uleb128 0xa
	.string	"p_own_sn"
	.byte	0x9
	.byte	0xfb
	.uaword	0x960
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xa83
	.uleb128 0xe
	.string	"OsEE_TCB"
	.byte	0x9
	.uahalf	0x101
	.uaword	0xa93
	.uleb128 0xb
	.byte	0x4
	.uaword	0xb28
	.uleb128 0xe
	.string	"OsEE_TDB"
	.byte	0x9
	.uahalf	0x122
	.uaword	0x93d
	.uleb128 0xb
	.byte	0x4
	.uaword	0xb3f
	.uleb128 0xc
	.byte	0x20
	.byte	0x9
	.uahalf	0x2d9
	.uaword	0xc5b
	.uleb128 0xd
	.string	"p_curr"
	.byte	0x9
	.uahalf	0x2dc
	.uaword	0xb50
	.byte	0
	.uleb128 0xd
	.string	"rq"
	.byte	0x9
	.uahalf	0x2ee
	.uaword	0x951
	.byte	0x4
	.uleb128 0xd
	.string	"p_free_sn"
	.byte	0x9
	.uahalf	0x2f0
	.uaword	0x960
	.byte	0x8
	.uleb128 0xd
	.string	"p_stk_sn"
	.byte	0x9
	.uahalf	0x2ff
	.uaword	0x960
	.byte	0xc
	.uleb128 0xd
	.string	"os_status"
	.byte	0x9
	.uahalf	0x301
	.uaword	0xc5b
	.byte	0x10
	.uleb128 0xd
	.string	"app_mode"
	.byte	0x9
	.uahalf	0x305
	.uaword	0x430
	.byte	0x11
	.uleb128 0xd
	.string	"last_error"
	.byte	0x9
	.uahalf	0x307
	.uaword	0x843
	.byte	0x12
	.uleb128 0xd
	.string	"prev_s_isr_all_status"
	.byte	0x9
	.uahalf	0x327
	.uaword	0x245
	.byte	0x14
	.uleb128 0xd
	.string	"prev_s_isr_os_status"
	.byte	0x9
	.uahalf	0x329
	.uaword	0x245
	.byte	0x18
	.uleb128 0xd
	.string	"s_isr_all_cnt"
	.byte	0x9
	.uahalf	0x32b
	.uaword	0x966
	.byte	0x1c
	.uleb128 0xd
	.string	"s_isr_os_cnt"
	.byte	0x9
	.uahalf	0x32d
	.uaword	0x966
	.byte	0x1d
	.uleb128 0xd
	.string	"d_isr_all_cnt"
	.byte	0x9
	.uahalf	0x330
	.uaword	0x966
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.uaword	0x9de
	.uleb128 0xe
	.string	"OsEE_CCB"
	.byte	0x9
	.uahalf	0x33a
	.uaword	0xb56
	.uleb128 0xc
	.byte	0x8
	.byte	0x9
	.uahalf	0x344
	.uaword	0xc9f
	.uleb128 0xd
	.string	"p_ccb"
	.byte	0x9
	.uahalf	0x34a
	.uaword	0xc9f
	.byte	0
	.uleb128 0xd
	.string	"p_idle_task"
	.byte	0x9
	.uahalf	0x354
	.uaword	0xb50
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xc60
	.uleb128 0xe
	.string	"OsEE_CDB"
	.byte	0x9
	.uahalf	0x36a
	.uaword	0xcb6
	.uleb128 0xf
	.uaword	0xc71
	.uleb128 0xc
	.byte	0x4
	.byte	0x9
	.uahalf	0x36f
	.uaword	0xcd4
	.uleb128 0xd
	.string	"dummy"
	.byte	0x9
	.uahalf	0x3b1
	.uaword	0x245
	.byte	0
	.byte	0
	.uleb128 0xe
	.string	"OsEE_KCB"
	.byte	0x9
	.uahalf	0x3b3
	.uaword	0xcbb
	.uleb128 0xc
	.byte	0x14
	.byte	0x9
	.uahalf	0x3c3
	.uaword	0xd60
	.uleb128 0xd
	.string	"p_kcb"
	.byte	0x9
	.uahalf	0x3c5
	.uaword	0xd60
	.byte	0
	.uleb128 0xd
	.string	"p_tdb_ptr_array"
	.byte	0x9
	.uahalf	0x3d1
	.uaword	0xd71
	.byte	0x4
	.uleb128 0xd
	.string	"tdb_array_size"
	.byte	0x9
	.uahalf	0x3d4
	.uaword	0x5f7
	.byte	0x8
	.uleb128 0xd
	.string	"p_res_ptr_array"
	.byte	0x9
	.uahalf	0x3e0
	.uaword	0xd82
	.byte	0xc
	.uleb128 0xd
	.string	"res_array_size"
	.byte	0x9
	.uahalf	0x3e2
	.uaword	0x5f7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xcd4
	.uleb128 0x16
	.uaword	0x937
	.uaword	0xd71
	.uleb128 0x17
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xd66
	.uleb128 0x16
	.uaword	0xa62
	.uaword	0xd82
	.uleb128 0x17
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xd77
	.uleb128 0xe
	.string	"OsEE_KDB"
	.byte	0x9
	.uahalf	0x3fc
	.uaword	0xd99
	.uleb128 0xf
	.uaword	0xce5
	.uleb128 0x18
	.string	"osEE_tc_rslcx"
	.byte	0x2
	.byte	0xe7
	.byte	0x1
	.byte	0x3
	.uleb128 0x18
	.string	"osEE_tc_rfe"
	.byte	0x2
	.byte	0xec
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"osEE_tc_isr2_wrapper"
	.byte	0x1
	.uahalf	0x4289
	.byte	0x1
	.uaword	.LFB102
	.uaword	.LFE102
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xe32
	.uleb128 0x1a
	.string	"isr2_tid"
	.byte	0x1
	.uahalf	0x4289
	.uaword	0x443
	.uaword	.LLST0
	.uleb128 0x1b
	.uaword	0xd9e
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x42aa
	.uleb128 0x1b
	.uaword	0xdb1
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x42ab
	.uleb128 0x1c
	.uaword	.LVL1
	.uaword	0xe5e
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x1e
	.string	"osEE_kdb_var"
	.byte	0xa
	.byte	0x42
	.uaword	0xd88
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"osEE_cdb_var"
	.byte	0xa
	.byte	0x5b
	.uaword	0xca5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"osEE_activate_isr2"
	.byte	0xb
	.byte	0xa1
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.uaword	0x443
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.Ltext0
	.uaword	.LVL1-1-.Ltext0
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1-.Ltext0
	.uaword	.LFE102-.Ltext0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	osEE_activate_isr2,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
